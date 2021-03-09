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

defmodule GoogleApi.Dataflow.V1b3.Model.KeyRangeDataDiskAssignment do
  @moduledoc """
  Data disk assignment information for a specific key-range of a sharded computation. Currently we only support UTF-8 character splits to simplify encoding into JSON.

  ## Attributes

  *   `dataDisk` (*type:* `String.t`, *default:* `nil`) - The name of the data disk where data for this range is stored. This name is local to the Google Cloud Platform project and uniquely identifies the disk within that project, for example "myproject-1014-104817-4c2-harness-0-disk-1".
  *   `end` (*type:* `String.t`, *default:* `nil`) - The end (exclusive) of the key range.
  *   `start` (*type:* `String.t`, *default:* `nil`) - The start (inclusive) of the key range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataDisk => String.t() | nil,
          :end => String.t() | nil,
          :start => String.t() | nil
        }

  field(:dataDisk)
  field(:end)
  field(:start)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.KeyRangeDataDiskAssignment do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.KeyRangeDataDiskAssignment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.KeyRangeDataDiskAssignment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
