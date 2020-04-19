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

defmodule GoogleApi.DisplayVideo.V1.Model.CustomList do
  @moduledoc """
  Describes a custom list entity, such as a custom affinity or custom intent
  audience list.

  ## Attributes

  *   `customListId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the custom list. Assigned by the system.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of the custom list.
      .
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the custom list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customListId => String.t(),
          :displayName => String.t(),
          :name => String.t()
        }

  field(:customListId)
  field(:displayName)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.CustomList do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.CustomList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.CustomList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end