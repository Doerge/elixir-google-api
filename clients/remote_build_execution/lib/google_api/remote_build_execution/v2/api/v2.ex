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

defmodule GoogleApi.RemoteBuildExecution.V2.Api.V2 do
  @moduledoc """
  API calls for all endpoints tagged `V2`.
  """

  alias GoogleApi.RemoteBuildExecution.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  GetCapabilities returns the server capabilities configuration of the
  remote endpoint.
  Only the capabilities of the services supported by the endpoint will
  be returned:
  * Execution + CAS + Action Cache endpoints should return both
    CacheCapabilities and ExecutionCapabilities.
  * Execution only endpoints should return ExecutionCapabilities.
  * CAS + Action Cache only endpoints should return CacheCapabilities.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ServerCapabilities{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_get_capabilities(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ServerCapabilities.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def remotebuildexecution_get_capabilities(
        connection,
        instance_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{+instanceName}/capabilities", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ServerCapabilities{}
        ]
    )
  end
end
