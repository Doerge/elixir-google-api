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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ListNonBillableWinningBidsResponse do
  @moduledoc """
  Response message for listing all reasons for which a buyer was not billed for
  a winning bid.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results.
      Pass this value in the
      ListNonBillableWinningBidsRequest.pageToken
      field in the subsequent call to the nonBillableWinningBids.list
      method to retrieve the next page of results.
  *   `nonBillableWinningBidStatusRows` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.NonBillableWinningBidStatusRow.t)`, *default:* `nil`) - List of rows, with counts of bids not billed aggregated by reason.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :nonBillableWinningBidStatusRows =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.NonBillableWinningBidStatusRow.t())
        }

  field(:nextPageToken)

  field(:nonBillableWinningBidStatusRows,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.NonBillableWinningBidStatusRow,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListNonBillableWinningBidsResponse do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ListNonBillableWinningBidsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListNonBillableWinningBidsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
