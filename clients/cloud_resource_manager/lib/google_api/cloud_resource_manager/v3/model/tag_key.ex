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

defmodule GoogleApi.CloudResourceManager.V3.Model.TagKey do
  @moduledoc """
  A TagKey, used to group a set of TagValues.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.
  *   `namespacedName` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. Namespaced name of the TagKey.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the new TagKey's parent. Must be of the form `organizations/{org_id}`.
  *   `purpose` (*type:* `String.t`, *default:* `nil`) - Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
  *   `purposeData` (*type:* `map()`, *default:* `nil`) - Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.
  *   `shortName` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :namespacedName => String.t() | nil,
          :parent => String.t() | nil,
          :purpose => String.t() | nil,
          :purposeData => map() | nil,
          :shortName => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:name)
  field(:namespacedName)
  field(:parent)
  field(:purpose)
  field(:purposeData, type: :map)
  field(:shortName)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V3.Model.TagKey do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V3.Model.TagKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V3.Model.TagKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
