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

defmodule GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent do
  @moduledoc """
  A structured message reporting an autoscaling decision made by the Dataflow service.

  ## Attributes

  *   `currentNumWorkers` (*type:* `String.t`, *default:* `nil`) - The current number of workers the job has.
  *   `description` (*type:* `GoogleApi.Dataflow.V1b3.Model.StructuredMessage.t`, *default:* `nil`) - A message describing why the system decided to adjust the current number of workers, why it failed, or why the system decided to not make any changes to the number of workers.
  *   `eventType` (*type:* `String.t`, *default:* `nil`) - The type of autoscaling event to report.
  *   `targetNumWorkers` (*type:* `String.t`, *default:* `nil`) - The target number of workers the worker pool wants to resize to use.
  *   `time` (*type:* `DateTime.t`, *default:* `nil`) - The time this event was emitted to indicate a new target or current num_workers value.
  *   `workerPool` (*type:* `String.t`, *default:* `nil`) - A short and friendly name for the worker pool this event refers to, populated from the value of PoolStageRelation::user_pool_name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentNumWorkers => String.t() | nil,
          :description => GoogleApi.Dataflow.V1b3.Model.StructuredMessage.t() | nil,
          :eventType => String.t() | nil,
          :targetNumWorkers => String.t() | nil,
          :time => DateTime.t() | nil,
          :workerPool => String.t() | nil
        }

  field(:currentNumWorkers)
  field(:description, as: GoogleApi.Dataflow.V1b3.Model.StructuredMessage)
  field(:eventType)
  field(:targetNumWorkers)
  field(:time, as: DateTime)
  field(:workerPool)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
