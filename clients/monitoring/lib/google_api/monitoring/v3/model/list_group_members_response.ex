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

defmodule GoogleApi.Monitoring.V3.Model.ListGroupMembersResponse do
  @moduledoc """
  The ListGroupMembers response.

  ## Attributes

  *   `members` (*type:* `list(GoogleApi.Monitoring.V3.Model.MonitoredResource.t)`, *default:* `nil`) - A set of monitored resources in the group.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of elements matching this request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :members => list(GoogleApi.Monitoring.V3.Model.MonitoredResource.t()),
          :nextPageToken => String.t(),
          :totalSize => integer()
        }

  field(:members, as: GoogleApi.Monitoring.V3.Model.MonitoredResource, type: :list)
  field(:nextPageToken)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ListGroupMembersResponse do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ListGroupMembersResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ListGroupMembersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
