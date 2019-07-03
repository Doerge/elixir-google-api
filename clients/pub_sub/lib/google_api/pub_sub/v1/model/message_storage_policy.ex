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

defmodule GoogleApi.PubSub.V1.Model.MessageStoragePolicy do
  @moduledoc """


  ## Attributes

  *   `allowedPersistenceRegions` (*type:* `list(String.t)`, *default:* `nil`) - A list of IDs of GCP regions where messages that are published to the topic
      may be persisted in storage. Messages published by publishers running in
      non-allowed GCP regions (or running outside of GCP altogether) will be
      routed for storage in one of the allowed regions. An empty list means that
      no regions are allowed, and is not a valid configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedPersistenceRegions => list(String.t())
        }

  field(:allowedPersistenceRegions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.MessageStoragePolicy do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.MessageStoragePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.MessageStoragePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end