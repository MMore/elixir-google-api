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

defmodule GoogleApi.AndroidPublisher.V3.Model.SubscriptionListing do
  @moduledoc """
  The consumer-visible metadata of a subscription.

  ## Attributes

  *   `benefits` (*type:* `list(String.t)`, *default:* `nil`) - A list of benefits shown to the user on platforms such as the Play Store and in restoration flows in the language of this listing. Plain text. Ordered list of at most four benefits.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this subscription in the language of this listing. Maximum length - 80 characters. Plain text.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Required. The language of this listing, as defined by BCP-47, e.g. "en-US".
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. The title of this subscription in the language of this listing. Plain text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :benefits => list(String.t()) | nil,
          :description => String.t() | nil,
          :languageCode => String.t() | nil,
          :title => String.t() | nil
        }

  field(:benefits, type: :list)
  field(:description)
  field(:languageCode)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionListing do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.SubscriptionListing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionListing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
