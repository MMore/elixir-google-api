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

defmodule GoogleApi.BigQuery.V2.Model.JobStatistics do
  @moduledoc """


  ## Attributes

  *   `completionRatio` (*type:* `float()`, *default:* `nil`) - [TrustedTester] [Output-only] Job progress (0.0 -> 1.0) for LOAD and EXTRACT jobs.
  *   `copy` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatistics5.t`, *default:* `nil`) - [Output-only] Statistics for a copy job.
  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - [Output-only] Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs.
  *   `endTime` (*type:* `String.t`, *default:* `nil`) - [Output-only] End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state.
  *   `extract` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatistics4.t`, *default:* `nil`) - [Output-only] Statistics for an extract job.
  *   `load` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatistics3.t`, *default:* `nil`) - [Output-only] Statistics for a load job.
  *   `numChildJobs` (*type:* `String.t`, *default:* `nil`) - [Output-only] Number of child jobs executed.
  *   `parentJobId` (*type:* `String.t`, *default:* `nil`) - [Output-only] If this is a child job, the id of the parent.
  *   `query` (*type:* `GoogleApi.BigQuery.V2.Model.JobStatistics2.t`, *default:* `nil`) - [Output-only] Statistics for a query job.
  *   `quotaDeferments` (*type:* `list(String.t)`, *default:* `nil`) - [Output-only] Quotas which delayed this job's start time.
  *   `reservationUsage` (*type:* `list(GoogleApi.BigQuery.V2.Model.JobStatisticsReservationUsage.t)`, *default:* `nil`) - [Output-only] Job resource usage breakdown by reservation.
  *   `reservation_id` (*type:* `String.t`, *default:* `nil`) - [Output-only] Name of the primary reservation assigned to this job. Note that this could be different than reservations reported in the reservation usage field if parent reservations were used to execute this job.
  *   `rowLevelSecurityStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.RowLevelSecurityStatistics.t`, *default:* `nil`) - [Output-only] [Preview] Statistics for row-level security. Present only for query and extract jobs.
  *   `scriptStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.ScriptStatistics.t`, *default:* `nil`) - [Output-only] Statistics for a child job of a script.
  *   `sessionInfo` (*type:* `GoogleApi.BigQuery.V2.Model.SessionInfo.t`, *default:* `nil`) - [Output-only] [Preview] Information of the session if this job is part of one.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - [Output-only] Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE.
  *   `totalBytesProcessed` (*type:* `String.t`, *default:* `nil`) - [Output-only] [Deprecated] Use the bytes processed in the query statistics instead.
  *   `totalSlotMs` (*type:* `String.t`, *default:* `nil`) - [Output-only] Slot-milliseconds for the job.
  *   `transactionInfo` (*type:* `GoogleApi.BigQuery.V2.Model.TransactionInfo.t`, *default:* `nil`) - [Output-only] [Alpha] Information of the multi-statement transaction if this job is part of one.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completionRatio => float() | nil,
          :copy => GoogleApi.BigQuery.V2.Model.JobStatistics5.t() | nil,
          :creationTime => String.t() | nil,
          :endTime => String.t() | nil,
          :extract => GoogleApi.BigQuery.V2.Model.JobStatistics4.t() | nil,
          :load => GoogleApi.BigQuery.V2.Model.JobStatistics3.t() | nil,
          :numChildJobs => String.t() | nil,
          :parentJobId => String.t() | nil,
          :query => GoogleApi.BigQuery.V2.Model.JobStatistics2.t() | nil,
          :quotaDeferments => list(String.t()) | nil,
          :reservationUsage =>
            list(GoogleApi.BigQuery.V2.Model.JobStatisticsReservationUsage.t()) | nil,
          :reservation_id => String.t() | nil,
          :rowLevelSecurityStatistics =>
            GoogleApi.BigQuery.V2.Model.RowLevelSecurityStatistics.t() | nil,
          :scriptStatistics => GoogleApi.BigQuery.V2.Model.ScriptStatistics.t() | nil,
          :sessionInfo => GoogleApi.BigQuery.V2.Model.SessionInfo.t() | nil,
          :startTime => String.t() | nil,
          :totalBytesProcessed => String.t() | nil,
          :totalSlotMs => String.t() | nil,
          :transactionInfo => GoogleApi.BigQuery.V2.Model.TransactionInfo.t() | nil
        }

  field(:completionRatio)
  field(:copy, as: GoogleApi.BigQuery.V2.Model.JobStatistics5)
  field(:creationTime)
  field(:endTime)
  field(:extract, as: GoogleApi.BigQuery.V2.Model.JobStatistics4)
  field(:load, as: GoogleApi.BigQuery.V2.Model.JobStatistics3)
  field(:numChildJobs)
  field(:parentJobId)
  field(:query, as: GoogleApi.BigQuery.V2.Model.JobStatistics2)
  field(:quotaDeferments, type: :list)

  field(:reservationUsage,
    as: GoogleApi.BigQuery.V2.Model.JobStatisticsReservationUsage,
    type: :list
  )

  field(:reservation_id)
  field(:rowLevelSecurityStatistics, as: GoogleApi.BigQuery.V2.Model.RowLevelSecurityStatistics)
  field(:scriptStatistics, as: GoogleApi.BigQuery.V2.Model.ScriptStatistics)
  field(:sessionInfo, as: GoogleApi.BigQuery.V2.Model.SessionInfo)
  field(:startTime)
  field(:totalBytesProcessed)
  field(:totalSlotMs)
  field(:transactionInfo, as: GoogleApi.BigQuery.V2.Model.TransactionInfo)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobStatistics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
