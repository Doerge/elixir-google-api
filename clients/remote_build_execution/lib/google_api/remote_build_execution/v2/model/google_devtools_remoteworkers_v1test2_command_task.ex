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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTask do
  @moduledoc """
  Describes a shell-style task to execute, suitable for providing as the Bots
  interface's `Lease.payload` field.

  ## Attributes

  *   `expectedOutputs` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs.t`, *default:* `nil`) - The expected outputs from the task.
  *   `inputs` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs.t`, *default:* `nil`) - The inputs to the task.
  *   `timeouts` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts.t`, *default:* `nil`) - The timeouts of this task.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expectedOutputs =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs.t(),
          :inputs =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs.t(),
          :timeouts =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts.t()
        }

  field(:expectedOutputs,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
  )

  field(:inputs,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
  )

  field(:timeouts,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTask do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTask.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTask do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end