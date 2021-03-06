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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons do
  @moduledoc """
  The filtering reasons for the creative. Read-only. This field should not be set in requests.

  ## Attributes

  *   `date` (*type:* `String.t`, *default:* `nil`) - The date in ISO 8601 format for the data. The data is collected from 00:00:00 to 23:59:59 in PST.
  *   `reasons` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasonsReasons.t)`, *default:* `nil`) - The filtering reasons.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => String.t(),
          :reasons =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasonsReasons.t())
        }

  field(:date)

  field(:reasons,
    as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasonsReasons,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
