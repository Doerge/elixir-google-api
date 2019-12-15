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

defmodule GoogleApi.Run.V1.Model.KeyToPath do
  @moduledoc """
  Cloud Run fully managed: not supported

  Cloud Run for Anthos: supported

  Maps a string key to a path within a volume.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported

      The key to project.
  *   `mode` (*type:* `integer()`, *default:* `nil`) - (Optional)

      Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported

      Mode bits to use on this file, must be a value between 0 and 0777. If not
      specified, the volume defaultMode will be used. This might be in conflict
      with other options that affect the file mode, like fsGroup, and the result
      can be other mode bits set.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Cloud Run fully managed: not supported

      Cloud Run for Anthos: supported

      The relative path of the file to map the key to.
      May not be an absolute path.
      May not contain the path element '..'.
      May not start with the string '..'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t(),
          :mode => integer(),
          :path => String.t()
        }

  field(:key)
  field(:mode)
  field(:path)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.KeyToPath do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.KeyToPath.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.KeyToPath do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end