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

defmodule GoogleApi.CloudAsset.V1.Model.Asset do
  @moduledoc """
  An asset in Google Cloud. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM policy), or a relationship (e.g. an INSTANCE_TO_INSTANCEGROUP relationship). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.

  ## Attributes

  *   `accessLevel` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessLevel.t`, *default:* `nil`) - Please also refer to the [access level user guide](https://cloud.google.com/access-context-manager/docs/overview#access-levels).
  *   `accessPolicy` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessPolicy.t`, *default:* `nil`) - Please also refer to the [access policy user guide](https://cloud.google.com/access-context-manager/docs/overview#access-policies).
  *   `ancestors` (*type:* `list(String.t)`, *default:* `nil`) - The ancestry path of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), represented as a list of relative resource names. An ancestry path starts with the closest ancestor in the hierarchy and ends at root. If the asset is a project, folder, or organization, the ancestry path starts from the asset itself. Example: `["projects/123456789", "folders/5432", "organizations/1234"]`
  *   `assetType` (*type:* `String.t`, *default:* `nil`) - The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.
  *   `iamPolicy` (*type:* `GoogleApi.CloudAsset.V1.Model.Policy.t`, *default:* `nil`) - A representation of the Cloud IAM policy set on a Google Cloud resource. There can be a maximum of one Cloud IAM policy set on any given resource. In addition, Cloud IAM policies inherit their granted access scope from any policies set on parent resources in the resource hierarchy. Therefore, the effectively policy is the union of both the policy set on this resource and each policy set on all of the resource's ancestry resource levels in the hierarchy. See [this topic](https://cloud.google.com/iam/docs/policies#inheritance) for more information.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1` See [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.
  *   `orgPolicy` (*type:* `list(GoogleApi.CloudAsset.V1.Model.GoogleCloudOrgpolicyV1Policy.t)`, *default:* `nil`) - A representation of an [organization policy](https://cloud.google.com/resource-manager/docs/organization-policy/overview#organization_policy). There can be more than one organization policy with different constraints set on a given resource.
  *   `osInventory` (*type:* `GoogleApi.CloudAsset.V1.Model.Inventory.t`, *default:* `nil`) - A representation of runtime OS Inventory information. See [this topic](https://cloud.google.com/compute/docs/instances/os-inventory-management) for more information.
  *   `relatedAsset` (*type:* `GoogleApi.CloudAsset.V1.Model.RelatedAsset.t`, *default:* `nil`) - One related asset of the current asset.
  *   `relatedAssets` (*type:* `GoogleApi.CloudAsset.V1.Model.RelatedAssets.t`, *default:* `nil`) - DEPRECATED. This field only presents for the purpose of backward-compatibility. The server will never generate responses with this field. The related assets of the asset of one relationship type. One asset only represents one type of relationship.
  *   `resource` (*type:* `GoogleApi.CloudAsset.V1.Model.Resource.t`, *default:* `nil`) - A representation of the resource.
  *   `servicePerimeter` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeter.t`, *default:* `nil`) - Please also refer to the [service perimeter user guide](https://cloud.google.com/vpc-service-controls/docs/overview).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The last update timestamp of an asset. update_time is updated when create/update/delete operation is performed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessLevel =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessLevel.t()
            | nil,
          :accessPolicy =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessPolicy.t()
            | nil,
          :ancestors => list(String.t()) | nil,
          :assetType => String.t() | nil,
          :iamPolicy => GoogleApi.CloudAsset.V1.Model.Policy.t() | nil,
          :name => String.t() | nil,
          :orgPolicy =>
            list(GoogleApi.CloudAsset.V1.Model.GoogleCloudOrgpolicyV1Policy.t()) | nil,
          :osInventory => GoogleApi.CloudAsset.V1.Model.Inventory.t() | nil,
          :relatedAsset => GoogleApi.CloudAsset.V1.Model.RelatedAsset.t() | nil,
          :relatedAssets => GoogleApi.CloudAsset.V1.Model.RelatedAssets.t() | nil,
          :resource => GoogleApi.CloudAsset.V1.Model.Resource.t() | nil,
          :servicePerimeter =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeter.t()
            | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:accessLevel,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessLevel
  )

  field(:accessPolicy,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1AccessPolicy
  )

  field(:ancestors, type: :list)
  field(:assetType)
  field(:iamPolicy, as: GoogleApi.CloudAsset.V1.Model.Policy)
  field(:name)
  field(:orgPolicy, as: GoogleApi.CloudAsset.V1.Model.GoogleCloudOrgpolicyV1Policy, type: :list)
  field(:osInventory, as: GoogleApi.CloudAsset.V1.Model.Inventory)
  field(:relatedAsset, as: GoogleApi.CloudAsset.V1.Model.RelatedAsset)
  field(:relatedAssets, as: GoogleApi.CloudAsset.V1.Model.RelatedAssets)
  field(:resource, as: GoogleApi.CloudAsset.V1.Model.Resource)

  field(:servicePerimeter,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeter
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.Asset do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.Asset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.Asset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
