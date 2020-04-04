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

defmodule GoogleApi.ServiceUsage.V1.Model.BatchGetServicesResponse do
  @moduledoc """
  Response message for the `BatchGetServices` method.

  ## Attributes

  *   `services` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV1Service.t)`, *default:* `nil`) - The requested Service states.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :services => list(GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV1Service.t())
        }

  field(:services, as: GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV1Service, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.BatchGetServicesResponse do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.BatchGetServicesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.BatchGetServicesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
