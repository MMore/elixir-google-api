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

defmodule GoogleApi.GameServices.V1beta.Model.PreviewCreateGameServerClusterResponse do
  @moduledoc """
  Response message for GameServerClustersService.PreviewCreateGameServerCluster.

  ## Attributes

  *   `clusterState` (*type:* `GoogleApi.GameServices.V1beta.Model.KubernetesClusterState.t`, *default:* `nil`) - Output only. The state of the Kubernetes cluster in preview. This will be available if view is set to FULL in the relevant list/get/preview request.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The ETag of the game server cluster.
  *   `targetState` (*type:* `GoogleApi.GameServices.V1beta.Model.TargetState.t`, *default:* `nil`) - The target state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterState => GoogleApi.GameServices.V1beta.Model.KubernetesClusterState.t() | nil,
          :etag => String.t() | nil,
          :targetState => GoogleApi.GameServices.V1beta.Model.TargetState.t() | nil
        }

  field(:clusterState, as: GoogleApi.GameServices.V1beta.Model.KubernetesClusterState)
  field(:etag)
  field(:targetState, as: GoogleApi.GameServices.V1beta.Model.TargetState)
end

defimpl Poison.Decoder,
  for: GoogleApi.GameServices.V1beta.Model.PreviewCreateGameServerClusterResponse do
  def decode(value, options) do
    GoogleApi.GameServices.V1beta.Model.PreviewCreateGameServerClusterResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GameServices.V1beta.Model.PreviewCreateGameServerClusterResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
