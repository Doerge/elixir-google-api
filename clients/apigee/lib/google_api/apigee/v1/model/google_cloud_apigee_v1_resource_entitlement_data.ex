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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceEntitlementData do
  @moduledoc """


  ## Attributes

  *   `authEntitled` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether the resource is available to all
      registered users.
  *   `explicitAudiences` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AudienceEntitlement.t)`, *default:* `nil`) - List of explicit audience entitlements.
  *   `isPublic` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether the resource is public.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authEntitled => boolean(),
          :explicitAudiences =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AudienceEntitlement.t()),
          :isPublic => boolean()
        }

  field(:authEntitled)

  field(:explicitAudiences,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AudienceEntitlement,
    type: :list
  )

  field(:isPublic)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceEntitlementData do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceEntitlementData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceEntitlementData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end