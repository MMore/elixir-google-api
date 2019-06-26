# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Script.V1.Model.Content do
  @moduledoc """
  The Content resource.

  ## Attributes

  *   `files` (*type:* `list(GoogleApi.Script.V1.Model.File.t)`, *default:* `nil`) - The list of script project files.
      One of the files is a script manifest; it must be named "appsscript",
      must have type of JSON, and include the manifest configurations for the
      project.
  *   `scriptId` (*type:* `String.t`, *default:* `nil`) - The script project's Drive ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :files => list(GoogleApi.Script.V1.Model.File.t()),
          :scriptId => String.t()
        }

  field(:files, as: GoogleApi.Script.V1.Model.File, type: :list)
  field(:scriptId)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Content do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.Content.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.Content do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
