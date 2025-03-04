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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus do
  @moduledoc """
  The status of each individual document in the import process.

  ## Attributes

  *   `inputGcsSource` (*type:* `String.t`, *default:* `nil`) - The source Cloud Storage URI of the document.
  *   `outputGcsDestination` (*type:* `String.t`, *default:* `nil`) - The output_gcs_destination of the processed document if it was successful, otherwise empty.
  *   `status` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleRpcStatus.t`, *default:* `nil`) - The status of the importing of the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inputGcsSource => String.t() | nil,
          :outputGcsDestination => String.t() | nil,
          :status => GoogleApi.DocumentAI.V1beta3.Model.GoogleRpcStatus.t() | nil
        }

  field(:inputGcsSource)
  field(:outputGcsDestination)
  field(:status, as: GoogleApi.DocumentAI.V1beta3.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
