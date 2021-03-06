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

defmodule GoogleApi.ServiceNetworking.V1.Model.Endpoint do
  @moduledoc """
  `Endpoint` describes a network endpoint that serves a set of APIs.
  A service may expose any number of endpoints, and all endpoints share the
  same service configuration, such as quota configuration and monitoring
  configuration.

  Example service configuration:

      name: library-example.googleapis.com
      endpoints:
        # Below entry makes 'google.example.library.v1.Library'
        # API be served from endpoint address library-example.googleapis.com.
        # It also allows HTTP OPTIONS calls to be passed to the backend, for
        # it to decide whether the subsequent cross-origin request is
        # allowed to proceed.
      - name: library-example.googleapis.com
        allow_cors: true

  ## Attributes

  *   `aliases` (*type:* `list(String.t)`, *default:* `nil`) - DEPRECATED: This field is no longer supported. Instead of using aliases,
      please specify multiple google.api.Endpoint for each of the intended
      aliases.

      Additional names that this endpoint will be hosted on.
  *   `allowCors` (*type:* `boolean()`, *default:* `nil`) - Allowing
      [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka
      cross-domain traffic, would allow the backends served from this endpoint to
      receive and respond to HTTP OPTIONS requests. The response will be used by
      the browser to determine whether the subsequent cross-origin request is
      allowed to proceed.
  *   `features` (*type:* `list(String.t)`, *default:* `nil`) - The list of features enabled on this endpoint.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The canonical name of this endpoint.
  *   `target` (*type:* `String.t`, *default:* `nil`) - The specification of an Internet routable address of API frontend that will
      handle requests to this [API
      Endpoint](https://cloud.google.com/apis/design/glossary). It should be
      either a valid IPv4 address or a fully-qualified domain name. For example,
      "8.8.8.8" or "myservice.appspot.com".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aliases => list(String.t()),
          :allowCors => boolean(),
          :features => list(String.t()),
          :name => String.t(),
          :target => String.t()
        }

  field(:aliases, type: :list)
  field(:allowCors)
  field(:features, type: :list)
  field(:name)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Endpoint do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Endpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Endpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
