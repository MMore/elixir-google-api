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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Image do
  @moduledoc """
  An image that is specified by a URL and can have an `onClick` action.

  ## Attributes

  *   `altText` (*type:* `String.t`, *default:* `nil`) - The alternative text of this image, used for accessibility.
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - An image URL.
  *   `onClick` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick.t`, *default:* `nil`) - The action triggered by an `onClick` event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altText => String.t() | nil,
          :imageUrl => String.t() | nil,
          :onClick => GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick.t() | nil
        }

  field(:altText)
  field(:imageUrl)
  field(:onClick, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Image do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
