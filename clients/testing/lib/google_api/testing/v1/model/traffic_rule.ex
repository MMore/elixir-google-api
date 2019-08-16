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

defmodule GoogleApi.Testing.V1.Model.TrafficRule do
  @moduledoc """
  Network emulation parameters.

  ## Attributes

  *   `bandwidth` (*type:* `number()`, *default:* `nil`) - Bandwidth in kbits/second.
  *   `burst` (*type:* `number()`, *default:* `nil`) - Burst size in kbits.
  *   `delay` (*type:* `String.t`, *default:* `nil`) - Packet delay, must be >= 0.
  *   `packetDuplicationRatio` (*type:* `number()`, *default:* `nil`) - Packet duplication ratio (0.0 - 1.0).
  *   `packetLossRatio` (*type:* `number()`, *default:* `nil`) - Packet loss ratio (0.0 - 1.0).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bandwidth => number(),
          :burst => number(),
          :delay => String.t(),
          :packetDuplicationRatio => number(),
          :packetLossRatio => number()
        }

  field(:bandwidth)
  field(:burst)
  field(:delay)
  field(:packetDuplicationRatio)
  field(:packetLossRatio)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.TrafficRule do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.TrafficRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.TrafficRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
