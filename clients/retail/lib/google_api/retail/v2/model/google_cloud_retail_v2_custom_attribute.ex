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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute do
  @moduledoc """
  A custom attribute that is not explicitly modeled in Product.

  ## Attributes

  *   `indexable` (*type:* `boolean()`, *default:* `nil`) - This field is normally ignored unless AttributesConfig.attribute_config_level of the Catalog is set to the deprecated 'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode. For information about product-level attribute configuration, see [Configuration modes](https://cloud.google.com/retail/docs/attribute-config#config-modes). If true, custom attribute values are indexed, so that they can be filtered, faceted or boosted in SearchService.Search. This field is ignored in a UserEvent. See SearchRequest.filter, SearchRequest.facet_specs and SearchRequest.boost_spec for more details.
  *   `numbers` (*type:* `list(float())`, *default:* `nil`) - The numerical values of this custom attribute. For example, `[2.3, 15.4]` when the key is "lengths_cm". Exactly one of text or numbers should be set. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `searchable` (*type:* `boolean()`, *default:* `nil`) - This field is normally ignored unless AttributesConfig.attribute_config_level of the Catalog is set to the deprecated 'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode. For information about product-level attribute configuration, see [Configuration modes](https://cloud.google.com/retail/docs/attribute-config#config-modes). If true, custom attribute values are searchable by text queries in SearchService.Search. This field is ignored in a UserEvent. Only set if type text is set. Otherwise, a INVALID_ARGUMENT error is returned.
  *   `text` (*type:* `list(String.t)`, *default:* `nil`) - The textual values of this custom attribute. For example, `["yellow", "green"]` when the key is "color". Empty string is not allowed. Otherwise, an INVALID_ARGUMENT error is returned. Exactly one of text or numbers should be set. Otherwise, an INVALID_ARGUMENT error is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :indexable => boolean() | nil,
          :numbers => list(float()) | nil,
          :searchable => boolean() | nil,
          :text => list(String.t()) | nil
        }

  field(:indexable)
  field(:numbers, type: :list)
  field(:searchable)
  field(:text, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
