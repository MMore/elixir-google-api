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

defmodule GoogleApi.ToolResults.V1beta3.Model.TestCaseReference do
  @moduledoc """
  A reference to a test case. Test case references are canonically ordered lexicographically by these three factors: * First, by test_suite_name. * Second, by class_name. * Third, by name.

  ## Attributes

  *   `className` (*type:* `String.t`, *default:* `nil`) - The name of the class.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the test case. Required.
  *   `testSuiteName` (*type:* `String.t`, *default:* `nil`) - The name of the test suite to which this test case belongs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :className => String.t() | nil,
          :name => String.t() | nil,
          :testSuiteName => String.t() | nil
        }

  field(:className)
  field(:name)
  field(:testSuiteName)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.TestCaseReference do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.TestCaseReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.TestCaseReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
