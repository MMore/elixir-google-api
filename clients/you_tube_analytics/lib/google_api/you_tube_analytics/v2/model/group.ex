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

defmodule GoogleApi.YouTubeAnalytics.V2.Model.Group do
  @moduledoc """
  A group.

  ## Attributes

  *   `contentDetails` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.GroupContentDetails.t`, *default:* `nil`) - The `contentDetails` object contains additional information about the group, such as the number and type of items that it contains.
  *   `errors` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.Errors.t`, *default:* `nil`) - Apiary error details
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The Etag of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the group.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies the API resource's type. The value will be `youtube#group`.
  *   `snippet` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.GroupSnippet.t`, *default:* `nil`) - The `snippet` object contains basic information about the group, including its creation date and name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentDetails => GoogleApi.YouTubeAnalytics.V2.Model.GroupContentDetails.t() | nil,
          :errors => GoogleApi.YouTubeAnalytics.V2.Model.Errors.t() | nil,
          :etag => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :snippet => GoogleApi.YouTubeAnalytics.V2.Model.GroupSnippet.t() | nil
        }

  field(:contentDetails, as: GoogleApi.YouTubeAnalytics.V2.Model.GroupContentDetails)
  field(:errors, as: GoogleApi.YouTubeAnalytics.V2.Model.Errors)
  field(:etag)
  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTubeAnalytics.V2.Model.GroupSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTubeAnalytics.V2.Model.Group do
  def decode(value, options) do
    GoogleApi.YouTubeAnalytics.V2.Model.Group.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTubeAnalytics.V2.Model.Group do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
