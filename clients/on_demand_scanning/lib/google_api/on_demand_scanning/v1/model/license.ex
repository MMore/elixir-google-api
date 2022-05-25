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

defmodule GoogleApi.OnDemandScanning.V1.Model.License do
  @moduledoc """
  License information.

  ## Attributes

  *   `comments` (*type:* `String.t`, *default:* `nil`) - Comments
  *   `expression` (*type:* `String.t`, *default:* `nil`) - Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comments => String.t() | nil,
          :expression => String.t() | nil
        }

  field(:comments)
  field(:expression)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.License do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.License.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.License do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
