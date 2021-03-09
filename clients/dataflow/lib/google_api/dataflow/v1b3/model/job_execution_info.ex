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

defmodule GoogleApi.Dataflow.V1b3.Model.JobExecutionInfo do
  @moduledoc """
  Additional information about how a Cloud Dataflow job will be executed that isn't contained in the submitted job.

  ## Attributes

  *   `stages` (*type:* `%{optional(String.t) => GoogleApi.Dataflow.V1b3.Model.JobExecutionStageInfo.t}`, *default:* `nil`) - A mapping from each stage to the information about that stage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :stages =>
            %{optional(String.t()) => GoogleApi.Dataflow.V1b3.Model.JobExecutionStageInfo.t()}
            | nil
        }

  field(:stages, as: GoogleApi.Dataflow.V1b3.Model.JobExecutionStageInfo, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.JobExecutionInfo do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.JobExecutionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.JobExecutionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
