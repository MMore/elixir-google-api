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

defmodule GoogleApi.Gmail.V1.Model.PopSettings do
  @moduledoc """
  POP settings for an account.

  ## Attributes

  *   `accessWindow` (*type:* `String.t`, *default:* `nil`) - The range of messages which are accessible via POP.
  *   `disposition` (*type:* `String.t`, *default:* `nil`) - The action that will be executed on a message after it has been fetched via
      POP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessWindow => String.t(),
          :disposition => String.t()
        }

  field(:accessWindow)
  field(:disposition)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.PopSettings do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.PopSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.PopSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
