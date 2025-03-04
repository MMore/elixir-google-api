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

defmodule GoogleApi.Compute.V1.Model.SubnetworkLogConfig do
  @moduledoc """
  The available logging options for this subnetwork.

  ## Attributes

  *   `aggregationInterval` (*type:* `String.t`, *default:* `nil`) - Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  *   `enable` (*type:* `boolean()`, *default:* `nil`) - Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled.
  *   `filterExpr` (*type:* `String.t`, *default:* `nil`) - Can only be specified if VPC flow logs for this subnetwork is enabled. The filter expression is used to define which VPC flow logs should be exported to Cloud Logging.
  *   `flowSampling` (*type:* `number()`, *default:* `nil`) - Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  *   `metadata` (*type:* `String.t`, *default:* `nil`) - Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
  *   `metadataFields` (*type:* `list(String.t)`, *default:* `nil`) - Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" was set to CUSTOM_METADATA.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregationInterval => String.t() | nil,
          :enable => boolean() | nil,
          :filterExpr => String.t() | nil,
          :flowSampling => number() | nil,
          :metadata => String.t() | nil,
          :metadataFields => list(String.t()) | nil
        }

  field(:aggregationInterval)
  field(:enable)
  field(:filterExpr)
  field(:flowSampling)
  field(:metadata)
  field(:metadataFields, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SubnetworkLogConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SubnetworkLogConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SubnetworkLogConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
