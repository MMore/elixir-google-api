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

defmodule GoogleApi.Dataflow.V1b3.Model.StreamLocation do
  @moduledoc """
  Describes a stream of data, either as input to be processed or as output of a streaming Dataflow job.

  ## Attributes

  *   `customSourceLocation` (*type:* `GoogleApi.Dataflow.V1b3.Model.CustomSourceLocation.t`, *default:* `nil`) - The stream is a custom source.
  *   `pubsubLocation` (*type:* `GoogleApi.Dataflow.V1b3.Model.PubsubLocation.t`, *default:* `nil`) - The stream is a pubsub stream.
  *   `sideInputLocation` (*type:* `GoogleApi.Dataflow.V1b3.Model.StreamingSideInputLocation.t`, *default:* `nil`) - The stream is a streaming side input.
  *   `streamingStageLocation` (*type:* `GoogleApi.Dataflow.V1b3.Model.StreamingStageLocation.t`, *default:* `nil`) - The stream is part of another computation within the current streaming Dataflow job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customSourceLocation => GoogleApi.Dataflow.V1b3.Model.CustomSourceLocation.t() | nil,
          :pubsubLocation => GoogleApi.Dataflow.V1b3.Model.PubsubLocation.t() | nil,
          :sideInputLocation =>
            GoogleApi.Dataflow.V1b3.Model.StreamingSideInputLocation.t() | nil,
          :streamingStageLocation =>
            GoogleApi.Dataflow.V1b3.Model.StreamingStageLocation.t() | nil
        }

  field(:customSourceLocation, as: GoogleApi.Dataflow.V1b3.Model.CustomSourceLocation)
  field(:pubsubLocation, as: GoogleApi.Dataflow.V1b3.Model.PubsubLocation)
  field(:sideInputLocation, as: GoogleApi.Dataflow.V1b3.Model.StreamingSideInputLocation)
  field(:streamingStageLocation, as: GoogleApi.Dataflow.V1b3.Model.StreamingStageLocation)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StreamLocation do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.StreamLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StreamLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
