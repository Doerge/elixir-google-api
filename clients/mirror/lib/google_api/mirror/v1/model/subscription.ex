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

defmodule GoogleApi.Mirror.V1.Model.Subscription do
  @moduledoc """
  A subscription to events on a collection.

  ## Attributes

  *   `callbackUrl` (*type:* `String.t`, *default:* `nil`) - The URL where notifications should be delivered (must start with https://).
  *   `collection` (*type:* `String.t`, *default:* `nil`) - The collection to subscribe to. Allowed values are:  
      - timeline - Changes in the timeline including insertion, deletion, and updates. 
      - locations - Location updates. 
      - settings - Settings updates.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the subscription.
  *   `kind` (*type:* `String.t`, *default:* `mirror#subscription`) - The type of resource. This is always mirror#subscription.
  *   `notification` (*type:* `GoogleApi.Mirror.V1.Model.Notification.t`, *default:* `nil`) - Container object for notifications. This is not populated in the Subscription resource.
  *   `operation` (*type:* `list(String.t)`, *default:* `nil`) - A list of operations that should be subscribed to. An empty list indicates that all operations on the collection should be subscribed to. Allowed values are:  
      - UPDATE - The item has been updated. 
      - INSERT - A new item has been inserted. 
      - DELETE - The item has been deleted. 
      - MENU_ACTION - A custom menu item has been triggered by the user.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - The time at which this subscription was last modified, formatted according to RFC 3339.
  *   `userToken` (*type:* `String.t`, *default:* `nil`) - An opaque token sent to the subscriber in notifications so that it can determine the ID of the user.
  *   `verifyToken` (*type:* `String.t`, *default:* `nil`) - A secret token sent to the subscriber in notifications so that it can verify that the notification was generated by Google.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callbackUrl => String.t(),
          :collection => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :notification => GoogleApi.Mirror.V1.Model.Notification.t(),
          :operation => list(String.t()),
          :updated => DateTime.t(),
          :userToken => String.t(),
          :verifyToken => String.t()
        }

  field(:callbackUrl)
  field(:collection)
  field(:id)
  field(:kind)
  field(:notification, as: GoogleApi.Mirror.V1.Model.Notification)
  field(:operation, type: :list)
  field(:updated, as: DateTime)
  field(:userToken)
  field(:verifyToken)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.Subscription do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.Subscription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.Subscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
