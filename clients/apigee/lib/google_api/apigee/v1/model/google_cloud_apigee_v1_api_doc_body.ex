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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDocBody do
  @moduledoc """


  ## Attributes

  *   `anonAllowed` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether all or only registered
      users can access the API.
  *   `apiId` (*type:* `String.t`, *default:* `nil`) - ID of the API.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the API.
  *   `edgeAPIProductName` (*type:* `String.t`, *default:* `nil`) - Name of the associated API product.
  *   `enrollment` (*type:* `String.t`, *default:* `nil`) - Not used by Apigee hybrid.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of the API.
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - URL of the image used for the API in the API catalog.
  *   `modified` (*type:* `String.t`, *default:* `nil`) - Time the API was last modified in milliseconds since epoch.
  *   `productExists` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether the API product exists.
  *   `requireCallbackUrl` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether a callback URL is required.
  *   `siteId` (*type:* `String.t`, *default:* `nil`) - Name of the portal.
  *   `snapshotExists` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether a snapshot of the OpenAPI Specification
      that is used to render API reference documentation exists.
  *   `snapshotModified` (*type:* `String.t`, *default:* `nil`) - Time the snapshot of the OpenAPI Specification was last modified in
      milliseconds since epoch.
  *   `snapshotOutdated` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether the snapshot of the OpenAPI
      Specification is out of date.
  *   `snapshotSourceMissing` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether the snapshot of the OpenAPI
      Specification is missing.
  *   `snapshotState` (*type:* `String.t`, *default:* `nil`) - Status of the snapshot of the OpenAPI Specification that is used
      to render API reference documentation.
  *   `specContent` (*type:* `String.t`, *default:* `nil`) - OpenAPI Specification content.
  *   `specId` (*type:* `String.t`, *default:* `nil`) - ID of the OpenAPI Specification.
  *   `specModified` (*type:* `String.t`, *default:* `nil`) - Time the OpenAPI Specification was last modified in milliseconds
      since epoch.
  *   `specTitle` (*type:* `String.t`, *default:* `nil`) - Title of the OpenAPI Specification.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the API.
  *   `visibility` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether the API is visible to all users
      (public).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :anonAllowed => boolean(),
          :apiId => String.t(),
          :description => String.t(),
          :edgeAPIProductName => String.t(),
          :enrollment => String.t(),
          :id => String.t(),
          :imageUrl => String.t(),
          :modified => String.t(),
          :productExists => boolean(),
          :requireCallbackUrl => boolean(),
          :siteId => String.t(),
          :snapshotExists => boolean(),
          :snapshotModified => String.t(),
          :snapshotOutdated => boolean(),
          :snapshotSourceMissing => boolean(),
          :snapshotState => String.t(),
          :specContent => String.t(),
          :specId => String.t(),
          :specModified => String.t(),
          :specTitle => String.t(),
          :title => String.t(),
          :visibility => boolean()
        }

  field(:anonAllowed)
  field(:apiId)
  field(:description)
  field(:edgeAPIProductName)
  field(:enrollment)
  field(:id)
  field(:imageUrl)
  field(:modified)
  field(:productExists)
  field(:requireCallbackUrl)
  field(:siteId)
  field(:snapshotExists)
  field(:snapshotModified)
  field(:snapshotOutdated)
  field(:snapshotSourceMissing)
  field(:snapshotState)
  field(:specContent)
  field(:specId)
  field(:specModified)
  field(:specTitle)
  field(:title)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDocBody do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDocBody.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDocBody do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
