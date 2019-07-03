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

defmodule GoogleApi.DFAReporting.V33.Model.LanguageTargeting do
  @moduledoc """
  Language Targeting.

  ## Attributes

  *   `languages` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Language.t)`, *default:* `nil`) - Languages that this ad targets. For each language only languageId is required. The other fields are populated automatically when the ad is inserted or updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :languages => list(GoogleApi.DFAReporting.V33.Model.Language.t())
        }

  field(:languages, as: GoogleApi.DFAReporting.V33.Model.Language, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.LanguageTargeting do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.LanguageTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.LanguageTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end