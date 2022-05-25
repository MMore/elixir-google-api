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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestBoostSpec do
  @moduledoc """
  Boost specification to boost certain items.

  ## Attributes

  *   `conditionBoostSpecs` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec.t)`, *default:* `nil`) - Condition boost specifications. If a product matches multiple conditions in the specifictions, boost scores from these specifications are all applied and combined in a non-linear way. Maximum number of specifications is 20.
  *   `skipBoostSpecValidation` (*type:* `boolean()`, *default:* `nil`) - Whether to skip boostspec validation. If this field is set to true, invalid BoostSpec.condition_boost_specs will be ignored and valid BoostSpec.condition_boost_specs will still be applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditionBoostSpecs =>
            list(
              GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec.t()
            )
            | nil,
          :skipBoostSpecValidation => boolean() | nil
        }

  field(:conditionBoostSpecs,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec,
    type: :list
  )

  field(:skipBoostSpecValidation)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestBoostSpec do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestBoostSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestBoostSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
