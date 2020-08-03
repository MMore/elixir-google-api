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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative do
  @moduledoc """
  A creative and its classification data.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The account that this creative belongs to. Can be used to filter the response of the creatives.list method.
  *   `adChoicesDestinationUrl` (*type:* `String.t`, *default:* `nil`) - The link to AdChoices destination page.
  *   `adTechnologyProviders` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.AdTechnologyProviders.t`, *default:* `nil`) - Output only. The detected ad technology providers.
  *   `advertiserName` (*type:* `String.t`, *default:* `nil`) - The name of the company being advertised in the creative.
  *   `agencyId` (*type:* `String.t`, *default:* `nil`) - The agency ID for this creative.
  *   `apiUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of the creative via API.
  *   `attributes` (*type:* `list(String.t)`, *default:* `nil`) - All attributes for the ads that may be shown from this creative. Can be used to filter the response of the creatives.list method.
  *   `clickThroughUrls` (*type:* `list(String.t)`, *default:* `nil`) - The set of destination URLs for the creative.
  *   `corrections` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction.t)`, *default:* `nil`) - Output only. Shows any corrections that were applied to this creative.
  *   `creativeId` (*type:* `String.t`, *default:* `nil`) - The buyer-defined creative ID of this creative. Can be used to filter the response of the creatives.list method.
  *   `dealsStatus` (*type:* `String.t`, *default:* `nil`) - Output only. The top-level deals status of this creative. If disapproved, an entry for 'auctionType=DIRECT_DEALS' (or 'ALL') in serving_restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method.
  *   `declaredClickThroughUrls` (*type:* `list(String.t)`, *default:* `nil`) - The set of declared destination URLs for the creative.
  *   `detectedAdvertiserIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Detected advertiser IDs, if any.
  *   `detectedDomains` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The detected domains for this creative.
  *   `detectedLanguages` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The detected languages for this creative. The order is arbitrary. The codes are 2 or 5 characters and are documented at https://developers.google.com/adwords/api/docs/appendix/languagecodes.
  *   `detectedProductCategories` (*type:* `list(integer())`, *default:* `nil`) - Output only. Detected product categories, if any. See the ad-product-categories.txt file in the technical documentation for a list of IDs.
  *   `detectedSensitiveCategories` (*type:* `list(integer())`, *default:* `nil`) - Output only. Detected sensitive categories, if any. See the ad-sensitive-categories.txt file in the technical documentation for a list of IDs. You should use these IDs along with the excluded-sensitive-category field in the bid request to filter your bids.
  *   `html` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.HtmlContent.t`, *default:* `nil`) - An HTML creative.
  *   `impressionTrackingUrls` (*type:* `list(String.t)`, *default:* `nil`) - The set of URLs to be called to record an impression.
  *   `native` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.NativeContent.t`, *default:* `nil`) - A native creative.
  *   `openAuctionStatus` (*type:* `String.t`, *default:* `nil`) - Output only. The top-level open auction status of this creative. If disapproved, an entry for 'auctionType = OPEN_AUCTION' (or 'ALL') in serving_restrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case, it may be preferable to read from serving_restrictions directly. Can be used to filter the response of the creatives.list method.
  *   `restrictedCategories` (*type:* `list(String.t)`, *default:* `nil`) - All restricted categories for the ads that may be shown from this creative.
  *   `servingRestrictions` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction.t)`, *default:* `nil`) - Output only. The granular status of this ad in specific contexts. A context here relates to where something ultimately serves (for example, a physical location, a platform, an HTTPS vs HTTP request, or the type of auction).
  *   `vendorIds` (*type:* `list(integer())`, *default:* `nil`) - All vendor IDs for the ads that may be shown from this creative. See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for possible values.
  *   `version` (*type:* `integer()`, *default:* `nil`) - Output only. The version of this creative.
  *   `video` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent.t`, *default:* `nil`) - A video creative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :adChoicesDestinationUrl => String.t(),
          :adTechnologyProviders =>
            GoogleApi.AdExchangeBuyer.V2beta1.Model.AdTechnologyProviders.t(),
          :advertiserName => String.t(),
          :agencyId => String.t(),
          :apiUpdateTime => DateTime.t(),
          :attributes => list(String.t()),
          :clickThroughUrls => list(String.t()),
          :corrections => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction.t()),
          :creativeId => String.t(),
          :dealsStatus => String.t(),
          :declaredClickThroughUrls => list(String.t()),
          :detectedAdvertiserIds => list(String.t()),
          :detectedDomains => list(String.t()),
          :detectedLanguages => list(String.t()),
          :detectedProductCategories => list(integer()),
          :detectedSensitiveCategories => list(integer()),
          :html => GoogleApi.AdExchangeBuyer.V2beta1.Model.HtmlContent.t(),
          :impressionTrackingUrls => list(String.t()),
          :native => GoogleApi.AdExchangeBuyer.V2beta1.Model.NativeContent.t(),
          :openAuctionStatus => String.t(),
          :restrictedCategories => list(String.t()),
          :servingRestrictions =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction.t()),
          :vendorIds => list(integer()),
          :version => integer(),
          :video => GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent.t()
        }

  field(:accountId)
  field(:adChoicesDestinationUrl)
  field(:adTechnologyProviders, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.AdTechnologyProviders)
  field(:advertiserName)
  field(:agencyId)
  field(:apiUpdateTime, as: DateTime)
  field(:attributes, type: :list)
  field(:clickThroughUrls, type: :list)
  field(:corrections, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Correction, type: :list)
  field(:creativeId)
  field(:dealsStatus)
  field(:declaredClickThroughUrls, type: :list)
  field(:detectedAdvertiserIds, type: :list)
  field(:detectedDomains, type: :list)
  field(:detectedLanguages, type: :list)
  field(:detectedProductCategories, type: :list)
  field(:detectedSensitiveCategories, type: :list)
  field(:html, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.HtmlContent)
  field(:impressionTrackingUrls, type: :list)
  field(:native, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.NativeContent)
  field(:openAuctionStatus)
  field(:restrictedCategories, type: :list)

  field(:servingRestrictions,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingRestriction,
    type: :list
  )

  field(:vendorIds, type: :list)
  field(:version)
  field(:video, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoContent)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Creative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
