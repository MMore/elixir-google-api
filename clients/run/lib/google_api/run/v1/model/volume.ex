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

defmodule GoogleApi.Run.V1.Model.Volume do
  @moduledoc """
  Cloud Run fully managed: not supported

  Cloud Run for Anthos: supported

  Volume represents a named volume in a container.

  ## Attributes

  *   `configMap` (*type:* `GoogleApi.Run.V1.Model.ConfigMapVolumeSource.t`, *default:* `nil`) - Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported
  *   `name` (*type:* `String.t`, *default:* `nil`) - Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported

      Volume's name.
  *   `secret` (*type:* `GoogleApi.Run.V1.Model.SecretVolumeSource.t`, *default:* `nil`) - Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configMap => GoogleApi.Run.V1.Model.ConfigMapVolumeSource.t(),
          :name => String.t(),
          :secret => GoogleApi.Run.V1.Model.SecretVolumeSource.t()
        }

  field(:configMap, as: GoogleApi.Run.V1.Model.ConfigMapVolumeSource)
  field(:name)
  field(:secret, as: GoogleApi.Run.V1.Model.SecretVolumeSource)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.Volume do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.Volume.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.Volume do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
