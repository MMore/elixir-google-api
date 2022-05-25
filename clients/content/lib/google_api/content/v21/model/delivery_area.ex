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

defmodule GoogleApi.Content.V21.Model.DeliveryArea do
  @moduledoc """
  A delivery area for the product. Only one of `countryCode` or `postalCodeRange` must be set.

  ## Attributes

  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Required. The country that the product can be delivered to. Submit a [unicode CLDR region](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) such as `US` or `CH`.
  *   `postalCodeRange` (*type:* `GoogleApi.Content.V21.Model.DeliveryAreaPostalCodeRange.t`, *default:* `nil`) - A postal code, postal code range or postal code prefix that defines this area. Limited to US and AUS.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - A state, territory, or prefecture. This is supported for the United States, Australia, and Japan. Provide a subdivision code from the ISO 3166-2 code tables ([US](https://en.wikipedia.org/wiki/ISO_3166-2:US), [AU](https://en.wikipedia.org/wiki/ISO_3166-2:AU), or [JP](https://en.wikipedia.org/wiki/ISO_3166-2:JP)) without country prefix (for example, `"NY"`, `"NSW"`, `"03"`).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countryCode => String.t() | nil,
          :postalCodeRange => GoogleApi.Content.V21.Model.DeliveryAreaPostalCodeRange.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:countryCode)
  field(:postalCodeRange, as: GoogleApi.Content.V21.Model.DeliveryAreaPostalCodeRange)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.DeliveryArea do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.DeliveryArea.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.DeliveryArea do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
