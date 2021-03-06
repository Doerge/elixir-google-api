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

defmodule GoogleApi.Testing.V1.Model.RoboDirective do
  @moduledoc """
  Directs Robo to interact with a specific UI element if it is encountered
  during the crawl. Currently, Robo can perform text entry or element click.

  ## Attributes

  *   `actionType` (*type:* `String.t`, *default:* `nil`) - Required. The type of action that Robo should perform on the specified
      element.
  *   `inputText` (*type:* `String.t`, *default:* `nil`) - The text that Robo is directed to set. If left empty, the directive will be
      treated as a CLICK on the element matching the resource_name.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Required. The android resource name of the target UI element.
      For example,
         in Java: R.string.foo
         in xml: @string/foo
      Only the "foo" part is needed.
      Reference doc:
      https://developer.android.com/guide/topics/resources/accessing-resources.html
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionType => String.t(),
          :inputText => String.t(),
          :resourceName => String.t()
        }

  field(:actionType)
  field(:inputText)
  field(:resourceName)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.RoboDirective do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.RoboDirective.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.RoboDirective do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
