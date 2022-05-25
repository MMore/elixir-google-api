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

defmodule GoogleApi.HealthCare.V1.Model.DeidentifyFhirStoreRequest do
  @moduledoc """
  Creates a new FHIR store with sensitive information de-identified.

  ## Attributes

  *   `config` (*type:* `GoogleApi.HealthCare.V1.Model.DeidentifyConfig.t`, *default:* `nil`) - Deidentify configuration. Only one of `config` and `gcs_config_uri` can be specified.
  *   `destinationStore` (*type:* `String.t`, *default:* `nil`) - The name of the FHIR store to create and write the redacted data to. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`. * The destination dataset must exist. * The source dataset and destination dataset must both reside in the same location. De-identifying data across multiple locations is not supported. * The destination FHIR store must exist. * The caller must have the healthcare.fhirResources.update permission to write to the destination FHIR store.
  *   `gcsConfigUri` (*type:* `String.t`, *default:* `nil`) - Cloud Storage location to read the JSON cloud.healthcare.deidentify.DeidentifyConfig from, overriding the default config. Must be of the form `gs://{bucket_id}/path/to/object`. The Cloud Storage location must grant the Cloud IAM role `roles/storage.objectViewer` to the project's Cloud Healthcare Service Agent service account. Only one of `config` and `gcs_config_uri` can be specified.
  *   `resourceFilter` (*type:* `GoogleApi.HealthCare.V1.Model.FhirFilter.t`, *default:* `nil`) - A filter specifying the resources to include in the output. If not specified, all resources are included in the output.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.HealthCare.V1.Model.DeidentifyConfig.t() | nil,
          :destinationStore => String.t() | nil,
          :gcsConfigUri => String.t() | nil,
          :resourceFilter => GoogleApi.HealthCare.V1.Model.FhirFilter.t() | nil
        }

  field(:config, as: GoogleApi.HealthCare.V1.Model.DeidentifyConfig)
  field(:destinationStore)
  field(:gcsConfigUri)
  field(:resourceFilter, as: GoogleApi.HealthCare.V1.Model.FhirFilter)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.DeidentifyFhirStoreRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.DeidentifyFhirStoreRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.DeidentifyFhirStoreRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
