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

defmodule GoogleApi.Area120Tables.V1alpha1.Model.Workspace do
  @moduledoc """
  A single workspace.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the workspace was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The human readable title of the workspace.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the workspace. Workspace names have the form `workspaces/{workspace}`.
  *   `tables` (*type:* `list(GoogleApi.Area120Tables.V1alpha1.Model.Table.t)`, *default:* `nil`) - The list of tables in the workspace.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the workspace was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :tables => list(GoogleApi.Area120Tables.V1alpha1.Model.Table.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:name)
  field(:tables, as: GoogleApi.Area120Tables.V1alpha1.Model.Table, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Area120Tables.V1alpha1.Model.Workspace do
  def decode(value, options) do
    GoogleApi.Area120Tables.V1alpha1.Model.Workspace.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Area120Tables.V1alpha1.Model.Workspace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
