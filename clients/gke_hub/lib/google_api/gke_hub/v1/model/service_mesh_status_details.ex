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

defmodule GoogleApi.GKEHub.V1.Model.ServiceMeshStatusDetails do
  @moduledoc """
  Structured and human-readable details for a status.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - A machine-readable code that further describes a broad status.
  *   `details` (*type:* `String.t`, *default:* `nil`) - Human-readable explanation of code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :details => String.t() | nil
        }

  field(:code)
  field(:details)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ServiceMeshStatusDetails do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ServiceMeshStatusDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ServiceMeshStatusDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
