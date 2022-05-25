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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.SetIamPolicyRequest do
  @moduledoc """
  Request message for `SetIamPolicy` method.

  ## Attributes

  *   `policy` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy.t`, *default:* `nil`) - REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :policy => GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy.t() | nil
        }

  field(:policy, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.SetIamPolicyRequest do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.SetIamPolicyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.SetIamPolicyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
