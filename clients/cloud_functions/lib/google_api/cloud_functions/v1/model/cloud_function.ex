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

defmodule GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  @moduledoc """
  Describes a Cloud Function that contains user computation executed in response to an event. It encapsulate function and triggers configurations.

  ## Attributes

  *   `availableMemoryMb` (*type:* `integer()`, *default:* `nil`) - The amount of memory in MB available for a function. Defaults to 256MB.
  *   `buildId` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Build ID of the latest successful deployment of the function.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description of a function.
  *   `entryPoint` (*type:* `String.t`, *default:* `nil`) - The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in `source_location`.
  *   `environmentVariables` (*type:* `map()`, *default:* `nil`) - Environment variables that shall be available during function execution.
  *   `eventTrigger` (*type:* `GoogleApi.CloudFunctions.V1.Model.EventTrigger.t`, *default:* `nil`) - A source that fires events in response to a condition in another service.
  *   `httpsTrigger` (*type:* `GoogleApi.CloudFunctions.V1.Model.HttpsTrigger.t`, *default:* `nil`) - An HTTPS endpoint type of source that can be triggered via URL.
  *   `ingressSettings` (*type:* `String.t`, *default:* `nil`) - The ingress settings for the function, controlling what traffic can reach it.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels associated with this Cloud Function.
  *   `maxInstances` (*type:* `integer()`, *default:* `nil`) - The limit on the maximum number of function instances that may coexist at a given time.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  *   `network` (*type:* `String.t`, *default:* `nil`) - The VPC Network that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network resource. If the short network name is used, the network must belong to the same project. Otherwise, it must belong to a project within the same organization. The format of this field is either `projects/{project}/global/networks/{network}` or `{network}`, where {project} is a project id where the network is defined, and {network} is the short name of the network. This field is mutually exclusive with `vpc_connector` and will be replaced by it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  *   `runtime` (*type:* `String.t`, *default:* `nil`) - The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](/sdk/gcloud/reference/functions/deploy#--runtime).
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  *   `sourceArchiveUrl` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Storage URL, starting with gs://, pointing to the zip archive which contains the function.
  *   `sourceRepository` (*type:* `GoogleApi.CloudFunctions.V1.Model.SourceRepository.t`, *default:* `nil`) - **Beta Feature** The source repository where a function is hosted.
  *   `sourceUploadUrl` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Storage signed URL used for source uploading, generated by google.cloud.functions.v1.GenerateUploadUrl
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. Status of the function deployment.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of a Cloud Function.
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - Output only. The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  *   `vpcConnector` (*type:* `String.t`, *default:* `nil`) - The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  *   `vpcConnectorEgressSettings` (*type:* `String.t`, *default:* `nil`) - The egress settings for the connector, controlling what traffic is diverted through it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableMemoryMb => integer(),
          :buildId => String.t(),
          :description => String.t(),
          :entryPoint => String.t(),
          :environmentVariables => map(),
          :eventTrigger => GoogleApi.CloudFunctions.V1.Model.EventTrigger.t(),
          :httpsTrigger => GoogleApi.CloudFunctions.V1.Model.HttpsTrigger.t(),
          :ingressSettings => String.t(),
          :labels => map(),
          :maxInstances => integer(),
          :name => String.t(),
          :network => String.t(),
          :runtime => String.t(),
          :serviceAccountEmail => String.t(),
          :sourceArchiveUrl => String.t(),
          :sourceRepository => GoogleApi.CloudFunctions.V1.Model.SourceRepository.t(),
          :sourceUploadUrl => String.t(),
          :status => String.t(),
          :timeout => String.t(),
          :updateTime => DateTime.t(),
          :versionId => String.t(),
          :vpcConnector => String.t(),
          :vpcConnectorEgressSettings => String.t()
        }

  field(:availableMemoryMb)
  field(:buildId)
  field(:description)
  field(:entryPoint)
  field(:environmentVariables, type: :map)
  field(:eventTrigger, as: GoogleApi.CloudFunctions.V1.Model.EventTrigger)
  field(:httpsTrigger, as: GoogleApi.CloudFunctions.V1.Model.HttpsTrigger)
  field(:ingressSettings)
  field(:labels, type: :map)
  field(:maxInstances)
  field(:name)
  field(:network)
  field(:runtime)
  field(:serviceAccountEmail)
  field(:sourceArchiveUrl)
  field(:sourceRepository, as: GoogleApi.CloudFunctions.V1.Model.SourceRepository)
  field(:sourceUploadUrl)
  field(:status)
  field(:timeout)
  field(:updateTime, as: DateTime)
  field(:versionId)
  field(:vpcConnector)
  field(:vpcConnectorEgressSettings)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.CloudFunction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
