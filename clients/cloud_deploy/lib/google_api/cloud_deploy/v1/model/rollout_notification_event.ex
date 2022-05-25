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

defmodule GoogleApi.CloudDeploy.V1.Model.RolloutNotificationEvent do
  @moduledoc """
  Payload proto for "clouddeploy.googleapis.com/rollout_notification" Platform Log event that describes the failure to send rollout status change Pub/Sub notification.

  ## Attributes

  *   `message` (*type:* `String.t`, *default:* `nil`) - Debug message for when a notification fails to send.
  *   `pipelineUid` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the `DeliveryPipeline`.
  *   `releaseUid` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the `Release`.
  *   `rollout` (*type:* `String.t`, *default:* `nil`) - The name of the `Rollout`.
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - ID of the `Target` that the rollout is deployed to.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of this notification, e.g. for a Pub/Sub failure.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :message => String.t() | nil,
          :pipelineUid => String.t() | nil,
          :releaseUid => String.t() | nil,
          :rollout => String.t() | nil,
          :targetId => String.t() | nil,
          :type => String.t() | nil
        }

  field(:message)
  field(:pipelineUid)
  field(:releaseUid)
  field(:rollout)
  field(:targetId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.RolloutNotificationEvent do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.RolloutNotificationEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.RolloutNotificationEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
