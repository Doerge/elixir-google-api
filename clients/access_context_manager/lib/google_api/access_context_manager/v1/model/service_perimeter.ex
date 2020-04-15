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

defmodule GoogleApi.AccessContextManager.V1.Model.ServicePerimeter do
  @moduledoc """
  `ServicePerimeter` describes a set of Google Cloud resources which can freely
  import and export data amongst themselves, but not export outside of the
  `ServicePerimeter`. If a request with a source within this `ServicePerimeter`
  has a target outside of the `ServicePerimeter`, the request will be blocked.
  Otherwise the request is allowed. There are two types of Service Perimeter -
  Regular and Bridge. Regular Service Perimeters cannot overlap, a single
  Google Cloud project can only belong to a single regular Service Perimeter.
  Service Perimeter Bridges can contain only Google Cloud projects as members,
  a single Google Cloud project may belong to multiple Service Perimeter
  Bridges.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the `ServicePerimeter` and its use. Does not affect
      behavior.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource name for the ServicePerimeter.  The `short_name`
      component must begin with a letter and only include alphanumeric and '_'.
      Format: `accessPolicies/{policy_id}/servicePerimeters/{short_name}`
  *   `perimeterType` (*type:* `String.t`, *default:* `nil`) - Perimeter type indicator. A single project is
      allowed to be a member of single regular perimeter, but multiple service
      perimeter bridges. A project cannot be a included in a perimeter bridge
      without being included in regular perimeter. For perimeter bridges,
      the restricted service list as well as access level lists must be
      empty.
  *   `spec` (*type:* `GoogleApi.AccessContextManager.V1.Model.ServicePerimeterConfig.t`, *default:* `nil`) - Proposed (or dry run) ServicePerimeter configuration. This configuration
      allows to specify and test ServicePerimeter configuration without enforcing
      actual access restrictions. Only allowed to be set when the
      "use_explicit_dry_run_spec" flag is set.
  *   `status` (*type:* `GoogleApi.AccessContextManager.V1.Model.ServicePerimeterConfig.t`, *default:* `nil`) - Current ServicePerimeter configuration. Specifies sets of resources,
      restricted services and access levels that determine perimeter
      content and boundaries.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Human readable title. Must be unique within the Policy.
  *   `useExplicitDryRunSpec` (*type:* `boolean()`, *default:* `nil`) - Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly
      exists  for all Service Perimeters, and that spec is identical to the
      status for those Service Perimeters. When this flag is set, it inhibits the
      generation of the implicit spec, thereby allowing the user to explicitly
      provide a configuration ("spec") to use in a dry-run version of the Service
      Perimeter. This allows the user to test changes to the enforced config
      ("status") without actually enforcing them. This testing is done through
      analyzing the differences between currently enforced and suggested
      restrictions. use_explicit_dry_run_spec must bet set to True if any of the
      fields in the spec are set to non-default values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :name => String.t(),
          :perimeterType => String.t(),
          :spec => GoogleApi.AccessContextManager.V1.Model.ServicePerimeterConfig.t(),
          :status => GoogleApi.AccessContextManager.V1.Model.ServicePerimeterConfig.t(),
          :title => String.t(),
          :useExplicitDryRunSpec => boolean()
        }

  field(:description)
  field(:name)
  field(:perimeterType)
  field(:spec, as: GoogleApi.AccessContextManager.V1.Model.ServicePerimeterConfig)
  field(:status, as: GoogleApi.AccessContextManager.V1.Model.ServicePerimeterConfig)
  field(:title)
  field(:useExplicitDryRunSpec)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.ServicePerimeter do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.ServicePerimeter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.ServicePerimeter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
