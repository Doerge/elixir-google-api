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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.Trace do
  @moduledoc """
  Trace represents one simulated packet forwarding path.
  <ul>
    <li>Each trace contains multiple ordered steps.</li>
    <li>Each step is in a particular state and has an associated
    configuration.</li> <li>State is categorized as a final or non-final
    state.</li> <li>Each final state has a reason associated with it.</li>
    <li>Each trace must end with a final state (the last step).</li>
  </ul>
  <pre><code>
    |---------------------Trace----------------------|
    Step1(State) Step2(State) ---  StepN(State(final))
  </code></pre>

  ## Attributes

  *   `endpointInfo` (*type:* `GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo.t`, *default:* `nil`) - Derived from the source and destination endpoints definition, and validated
      by the data plane model.
      If there are multiple traces starting from different source locations, then
      the endpoint_info may be different between traces.
  *   `steps` (*type:* `list(GoogleApi.NetworkManagement.V1beta1.Model.Step.t)`, *default:* `nil`) - A trace of a test contains multiple steps from the initial state to the
      final state (delivered, dropped, forwarded, or aborted).

      The steps are ordered by the processing sequence within the simulated
      network state machine. It is critical to preserve the order of the steps
      and avoid reordering or sorting them.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpointInfo => GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo.t(),
          :steps => list(GoogleApi.NetworkManagement.V1beta1.Model.Step.t())
        }

  field(:endpointInfo, as: GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo)
  field(:steps, as: GoogleApi.NetworkManagement.V1beta1.Model.Step, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.Trace do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.Trace.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.Trace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
