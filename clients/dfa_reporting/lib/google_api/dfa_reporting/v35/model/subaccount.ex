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

defmodule GoogleApi.DFAReporting.V35.Model.Subaccount do
  @moduledoc """
  Contains properties of a Campaign Manager subaccount.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - ID of the account that contains this subaccount. This is a read-only field that can be left blank.
  *   `availablePermissionIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs of the available user role permissions for this subaccount.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this subaccount. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#subaccount".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this subaccount. This is a required field. Must be less than 128 characters long and be unique among subaccounts of the same account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :availablePermissionIds => list(String.t()) | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil
        }

  field(:accountId)
  field(:availablePermissionIds, type: :list)
  field(:id)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.Subaccount do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.Subaccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.Subaccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
