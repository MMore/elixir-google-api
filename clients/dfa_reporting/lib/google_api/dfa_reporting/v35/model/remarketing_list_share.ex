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

defmodule GoogleApi.DFAReporting.V35.Model.RemarketingListShare do
  @moduledoc """
  Contains properties of a remarketing list's sharing information. Sharing allows other accounts or advertisers to target to your remarketing lists. This resource can be used to manage remarketing list sharing to other accounts and advertisers.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#remarketingListShare".
  *   `remarketingListId` (*type:* `String.t`, *default:* `nil`) - Remarketing list ID. This is a read-only, auto-generated field.
  *   `sharedAccountIds` (*type:* `list(String.t)`, *default:* `nil`) - Accounts that the remarketing list is shared with.
  *   `sharedAdvertiserIds` (*type:* `list(String.t)`, *default:* `nil`) - Advertisers that the remarketing list is shared with.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :remarketingListId => String.t() | nil,
          :sharedAccountIds => list(String.t()) | nil,
          :sharedAdvertiserIds => list(String.t()) | nil
        }

  field(:kind)
  field(:remarketingListId)
  field(:sharedAccountIds, type: :list)
  field(:sharedAdvertiserIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.RemarketingListShare do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.RemarketingListShare.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.RemarketingListShare do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
