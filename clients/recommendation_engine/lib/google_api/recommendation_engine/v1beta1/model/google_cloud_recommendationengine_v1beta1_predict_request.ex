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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictRequest do
  @moduledoc """
  Request message for Predict method.

  ## Attributes

  *   `dryRun` (*type:* `boolean()`, *default:* `nil`) - Optional. Use dryRun mode for this prediction query. If set to true, a fake model will be used that returns arbitrary catalog items. Note that the dryRun mode should only be used for testing the API, or if the model is not ready.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. Filter for restricting prediction results. Accepts values for tags and the `filterOutOfStockItems` flag. * Tag expressions. Restricts predictions to items that match all of the specified tags. Boolean operators `OR` and `NOT` are supported if the expression is enclosed in parentheses, and must be separated from the tag values by a space. `-"tagA"` is also supported and is equivalent to `NOT "tagA"`. Tag values must be double quoted UTF-8 encoded strings with a size limit of 1 KiB. * filterOutOfStockItems. Restricts predictions to items that do not have a stockState value of OUT_OF_STOCK. Examples: * tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional") * filterOutOfStockItems tag=(-"promotional") * filterOutOfStockItems If your filter blocks all prediction results, nothing will be returned. If you want generic (unfiltered) popular items to be returned instead, set `strictFiltering` to false in `PredictRequest.params`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels for the predict request. * Label keys can contain lowercase letters, digits and hyphens, must start with a letter, and must end with a letter or digit. * Non-zero label values can contain lowercase letters, digits and hyphens, must start with a letter, and must end with a letter or digit. * No more than 64 labels can be associated with a given request. See https://goo.gl/xmQnxf for more information on and examples of labels.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. Maximum number of results to return per page. Set this property to the number of prediction results required. If zero, the service will choose a reasonable default.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. The previous PredictResponse.next_page_token.
  *   `params` (*type:* `map()`, *default:* `nil`) - Optional. Additional domain specific parameters for the predictions. Allowed values: * `returnCatalogItem`: Boolean. If set to true, the associated catalogItem object will be returned in the `PredictResponse.PredictionResult.itemMetadata` object in the method response. * `returnItemScore`: Boolean. If set to true, the prediction 'score' corresponding to each returned item will be set in the `metadata` field in the prediction response. The given 'score' indicates the probability of an item being clicked/purchased given the user's context and history. * `strictFiltering`: Boolean. True by default. If set to false, the service will return generic (unfiltered) popular items instead of empty if your filter blocks all prediction results. * `priceRerankLevel`: String. Default empty. If set to be non-empty, then it needs to be one of {'no-price-reranking', 'low-price-reranking', 'medium-price-reranking', 'high-price-reranking'}. This gives request level control and adjust prediction results based on product price. * `diversityLevel`: String. Default empty. If set to be non-empty, then it needs to be one of {'no-diversity', 'low-diversity', 'medium-diversity', 'high-diversity', 'auto-diversity'}. This gives request level control and adjust prediction results based on product category.
  *   `userEvent` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent.t`, *default:* `nil`) - Required. Context about the user, what they are looking at and what action they took to trigger the predict request. Note that this user event detail won't be ingested to userEvent logs. Thus, a separate userEvent write request is required for event logging. Don't set UserInfo.visitor_id or UserInfo.user_id to the same fixed ID for different users. If you are trying to receive non-personalized recommendations (not recommended; this can negatively impact model performance), instead set UserInfo.visitor_id to a random unique ID and leave UserInfo.user_id unset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dryRun => boolean() | nil,
          :filter => String.t() | nil,
          :labels => map() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :params => map() | nil,
          :userEvent =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent.t()
            | nil
        }

  field(:dryRun)
  field(:filter)
  field(:labels, type: :map)
  field(:pageSize)
  field(:pageToken)
  field(:params, type: :map)

  field(:userEvent,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictRequest do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
