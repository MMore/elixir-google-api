# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Books.V1.Api.Promooffer do
  @moduledoc """
  API calls for all endpoints tagged `Promooffer`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """


  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:androidId` (*type:* `String.t`) - device android_id
      *   `:device` (*type:* `String.t`) - device device
      *   `:manufacturer` (*type:* `String.t`) - device manufacturer
      *   `:model` (*type:* `String.t`) - device model
      *   `:offerId` (*type:* `String.t`) - 
      *   `:product` (*type:* `String.t`) - device product
      *   `:serial` (*type:* `String.t`) - device serial
      *   `:volumeId` (*type:* `String.t`) - Volume id to exercise the offer
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_promooffer_accept(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def books_promooffer_accept(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :androidId => :query,
      :device => :query,
      :manufacturer => :query,
      :model => :query,
      :offerId => :query,
      :product => :query,
      :serial => :query,
      :volumeId => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/promooffer/accept", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """


  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:androidId` (*type:* `String.t`) - device android_id
      *   `:device` (*type:* `String.t`) - device device
      *   `:manufacturer` (*type:* `String.t`) - device manufacturer
      *   `:model` (*type:* `String.t`) - device model
      *   `:offerId` (*type:* `String.t`) - Offer to dimiss
      *   `:product` (*type:* `String.t`) - device product
      *   `:serial` (*type:* `String.t`) - device serial
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_promooffer_dismiss(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def books_promooffer_dismiss(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :androidId => :query,
      :device => :query,
      :manufacturer => :query,
      :model => :query,
      :offerId => :query,
      :product => :query,
      :serial => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/promooffer/dismiss", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns a list of promo offers available to the user

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:androidId` (*type:* `String.t`) - device android_id
      *   `:device` (*type:* `String.t`) - device device
      *   `:manufacturer` (*type:* `String.t`) - device manufacturer
      *   `:model` (*type:* `String.t`) - device model
      *   `:product` (*type:* `String.t`) - device product
      *   `:serial` (*type:* `String.t`) - device serial
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Offers{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_promooffer_get(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Offers.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def books_promooffer_get(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :androidId => :query,
      :device => :query,
      :manufacturer => :query,
      :model => :query,
      :product => :query,
      :serial => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/promooffer/get", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Offers{}])
  end
end
