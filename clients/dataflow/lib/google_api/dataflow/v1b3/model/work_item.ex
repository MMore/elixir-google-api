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

defmodule GoogleApi.Dataflow.V1b3.Model.WorkItem do
  @moduledoc """
  WorkItem represents basic information about a WorkItem to be executed in the cloud.

  ## Attributes

  *   `configuration` (*type:* `String.t`, *default:* `nil`) - Work item-specific configuration as an opaque blob.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Identifies this WorkItem.
  *   `initialReportIndex` (*type:* `String.t`, *default:* `nil`) - The initial index to use when reporting the status of the WorkItem.
  *   `jobId` (*type:* `String.t`, *default:* `nil`) - Identifies the workflow job this WorkItem belongs to.
  *   `leaseExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the lease on this Work will expire.
  *   `mapTask` (*type:* `GoogleApi.Dataflow.V1b3.Model.MapTask.t`, *default:* `nil`) - Additional information for MapTask WorkItems.
  *   `packages` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.Package.t)`, *default:* `nil`) - Any required packages that need to be fetched in order to execute this WorkItem.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Identifies the cloud project this WorkItem belongs to.
  *   `reportStatusInterval` (*type:* `String.t`, *default:* `nil`) - Recommended reporting interval.
  *   `seqMapTask` (*type:* `GoogleApi.Dataflow.V1b3.Model.SeqMapTask.t`, *default:* `nil`) - Additional information for SeqMapTask WorkItems.
  *   `shellTask` (*type:* `GoogleApi.Dataflow.V1b3.Model.ShellTask.t`, *default:* `nil`) - Additional information for ShellTask WorkItems.
  *   `sourceOperationTask` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest.t`, *default:* `nil`) - Additional information for source operation WorkItems.
  *   `streamingComputationTask` (*type:* `GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask.t`, *default:* `nil`) - Additional information for StreamingComputationTask WorkItems.
  *   `streamingConfigTask` (*type:* `GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask.t`, *default:* `nil`) - Additional information for StreamingConfigTask WorkItems.
  *   `streamingSetupTask` (*type:* `GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask.t`, *default:* `nil`) - Additional information for StreamingSetupTask WorkItems.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configuration => String.t() | nil,
          :id => String.t() | nil,
          :initialReportIndex => String.t() | nil,
          :jobId => String.t() | nil,
          :leaseExpireTime => DateTime.t() | nil,
          :mapTask => GoogleApi.Dataflow.V1b3.Model.MapTask.t() | nil,
          :packages => list(GoogleApi.Dataflow.V1b3.Model.Package.t()) | nil,
          :projectId => String.t() | nil,
          :reportStatusInterval => String.t() | nil,
          :seqMapTask => GoogleApi.Dataflow.V1b3.Model.SeqMapTask.t() | nil,
          :shellTask => GoogleApi.Dataflow.V1b3.Model.ShellTask.t() | nil,
          :sourceOperationTask => GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest.t() | nil,
          :streamingComputationTask =>
            GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask.t() | nil,
          :streamingConfigTask => GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask.t() | nil,
          :streamingSetupTask => GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask.t() | nil
        }

  field(:configuration)
  field(:id)
  field(:initialReportIndex)
  field(:jobId)
  field(:leaseExpireTime, as: DateTime)
  field(:mapTask, as: GoogleApi.Dataflow.V1b3.Model.MapTask)
  field(:packages, as: GoogleApi.Dataflow.V1b3.Model.Package, type: :list)
  field(:projectId)
  field(:reportStatusInterval)
  field(:seqMapTask, as: GoogleApi.Dataflow.V1b3.Model.SeqMapTask)
  field(:shellTask, as: GoogleApi.Dataflow.V1b3.Model.ShellTask)
  field(:sourceOperationTask, as: GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest)
  field(:streamingComputationTask, as: GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask)
  field(:streamingConfigTask, as: GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask)
  field(:streamingSetupTask, as: GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItem do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
