# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.YouTubeAnalytics.V2.Model.ListGroupsResponse do
  @moduledoc """
  Response message for GroupsService.ListGroups.

  ## Attributes

  *   `errors` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.Errors.t`, *default:* `nil`) - Apiary error details
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The Etag of this resource.
  *   `items` (*type:* `list(GoogleApi.YouTubeAnalytics.V2.Model.Group.t)`, *default:* `nil`) - A list of groups that match the API request parameters. Each item in the
      list represents a `group` resource.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies the API resource's type. The value will be
      `youtube#groupListResponse`.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token that can be used as the value of the `pageToken` parameter to
      retrieve the next page in the result set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => GoogleApi.YouTubeAnalytics.V2.Model.Errors.t(),
          :etag => String.t(),
          :items => list(GoogleApi.YouTubeAnalytics.V2.Model.Group.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:errors, as: GoogleApi.YouTubeAnalytics.V2.Model.Errors)
  field(:etag)
  field(:items, as: GoogleApi.YouTubeAnalytics.V2.Model.Group, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.YouTubeAnalytics.V2.Model.ListGroupsResponse do
  def decode(value, options) do
    GoogleApi.YouTubeAnalytics.V2.Model.ListGroupsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTubeAnalytics.V2.Model.ListGroupsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end