defmodule Gax.CompressionTest do
  use ExUnit.Case, async: true

  import Tesla.Mock

  alias GoogleApi.Gax.Request

  defmodule SmallLimitConnection do
    use GoogleApi.Gax.Connection,
      otp_app: :gax_compression_test,
      base_url: "https://example.com",
      max_body_size: 1024

    adapter(Tesla.Mock)
  end

  defp mock_gzip(body) do
    mock(fn %{method: :get, url: "https://example.com/big"} ->
      %Tesla.Env{status: 200, body: :zlib.gzip(body), headers: [{"content-encoding", "gzip"}]}
    end)
  end

  defp get_big(connection_module) do
    connection_module.execute(connection_module.new(), Request.url(Request.new(), "/big"))
  end

  test "defaults the limit to 512 MiB" do
    assert {Tesla.Middleware.DecompressResponse, :call, [[max_body_size: 512 * 1024 * 1024]]} in TestClient.Connection.__middleware__()
  end

  test "decompresses a large gzipped response under the default limit" do
    body = String.duplicate("{\"primaryEmail\":\"user@example.com\"},", 1_000_000)
    assert byte_size(body) > 32 * 1024 * 1024
    mock_gzip(body)

    assert {:ok, %Tesla.Env{status: 200, body: decompressed}} = get_big(TestClient.Connection)
    assert byte_size(decompressed) == byte_size(body)
  end

  test "reads the limit from the application env on each request" do
    Application.put_env(:gax_compression_test, :max_body_size, 2048)
    on_exit(fn -> Application.delete_env(:gax_compression_test, :max_body_size) end)

    body = String.duplicate("a", 2048)
    mock_gzip(body)

    assert {:ok, %Tesla.Env{body: ^body}} = get_big(SmallLimitConnection)
  end

  test "decompresses a gzipped response within a custom limit" do
    body = String.duplicate("a", 1024)
    mock_gzip(body)

    assert {:ok, %Tesla.Env{body: ^body}} = get_big(SmallLimitConnection)
  end

  if Code.ensure_loaded?(Tesla.Middleware.Compression.Error) do
    test "raises when the decompressed response exceeds the limit" do
      mock_gzip(String.duplicate("a", 1025))

      error =
        assert_raise Tesla.Middleware.Compression.Error, fn -> get_big(SmallLimitConnection) end

      assert error.reason == :max_body_size_exceeded
    end
  else
    test "older tesla ignores the limit" do
      body = String.duplicate("a", 1025)
      mock_gzip(body)

      assert {:ok, %Tesla.Env{body: ^body}} = get_big(SmallLimitConnection)
    end
  end
end
