# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CivicInfo.V2.Api.Elections do
  @moduledoc """
  API calls for all endpoints tagged `Elections`.
  """

  alias GoogleApi.CivicInfo.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  List of available elections to query.

  ## Parameters

  - connection (GoogleApi.CivicInfo.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (ElectionsQueryRequest): 

  ## Returns

  {:ok, %GoogleApi.CivicInfo.V2.Model.ElectionsQueryResponse{}} on success
  {:error, info} on failure
  """
  @spec civicinfo_elections_election_query(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.CivicInfo.V2.Model.ElectionsQueryResponse.t()} | {:error, Tesla.Env.t()}
  def civicinfo_elections_election_query(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/elections")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CivicInfo.V2.Model.ElectionsQueryResponse{})
  end

  @doc """
  Looks up information relevant to a voter based on the voter&#39;s registered address.

  ## Parameters

  - connection (GoogleApi.CivicInfo.V2.Connection): Connection to server
  - address (String.t): The registered address of the voter to look up.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :electionId (String.t): The unique ID of the election to look up. A list of election IDs can be obtained at https://www.googleapis.com/civicinfo/{version}/electionsIf no election ID is specified in the query and there is more than one election with data for the given voter, the additional elections are provided in the otherElections response field.
    - :officialOnly (boolean()): If set to true, only data from official state sources will be returned.
    - :returnAllAvailableData (boolean()): If set to true, the query will return the success codeand include any partial information when it is unable to determine a matching address or unable to determine the election for electionId&#x3D;0 queries.
    - :body (VoterInfoRequest): 

  ## Returns

  {:ok, %GoogleApi.CivicInfo.V2.Model.VoterInfoResponse{}} on success
  {:error, info} on failure
  """
  @spec civicinfo_elections_voter_info_query(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CivicInfo.V2.Model.VoterInfoResponse.t()} | {:error, Tesla.Env.t()}
  def civicinfo_elections_voter_info_query(connection, address, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :electionId => :query,
      :officialOnly => :query,
      :returnAllAvailableData => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/voterinfo")
      |> Request.add_param(:query, :address, address)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CivicInfo.V2.Model.VoterInfoResponse{})
  end
end
