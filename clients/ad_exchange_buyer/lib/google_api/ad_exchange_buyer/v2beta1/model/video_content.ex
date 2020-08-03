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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent do
  @moduledoc """
  Video content for a creative.

  ## Attributes

  *   `videoUrl` (*type:* `String.t`, *default:* `nil`) - The URL to fetch a video ad.
  *   `videoVastXml` (*type:* `String.t`, *default:* `nil`) - The contents of a VAST document for a video ad. This document should conform to the VAST 2.0 or 3.0 standard.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :videoUrl => String.t(),
          :videoVastXml => String.t()
        }

  field(:videoUrl)
  field(:videoVastXml)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
