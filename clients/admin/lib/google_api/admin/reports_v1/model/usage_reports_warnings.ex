# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings do
  @moduledoc """


  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - Machine readable code / warning type.
  *   `data` (*type:* `list(GoogleApi.Admin.Reports_v1.Model.UsageReportsWarningsData.t)`, *default:* `nil`) - Key-Value pairs to give detailed information on the warning.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Human readable message for the warning.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :data => list(GoogleApi.Admin.Reports_v1.Model.UsageReportsWarningsData.t()),
          :message => String.t()
        }

  field(:code)
  field(:data, as: GoogleApi.Admin.Reports_v1.Model.UsageReportsWarningsData, type: :list)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
