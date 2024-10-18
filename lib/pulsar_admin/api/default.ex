# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias PulsarAdmin.Connection
  import PulsarAdmin.RequestBuilder

  @doc """
  Fetches information about which Pulsar Functions are assigned to which Pulsar clusters
  Returns a nested map structure which Swagger does not fully support for display.Structure: Map<String, Set<String>>. Please refer to this structure for details.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_assignments_get(Tesla.Env.client, keyword()) :: {:ok, map()} | {:ok, nil} | {:error, Tesla.Env.t}
  def worker_assignments_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker/assignments")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {403, false},
      {503, false}
    ])
  end

  @doc """
  Fetches information about the Pulsar cluster running Pulsar Functions

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%WorkerInfo{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_cluster_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, [PulsarAdmin.Model.WorkerInfo.t]} | {:error, Tesla.Env.t}
  def worker_cluster_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker/cluster")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.WorkerInfo},
      {403, false},
      {503, false}
    ])
  end

  @doc """
  Fetches info about the leader node of the Pulsar cluster running Pulsar Functions

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.WorkerInfo.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_cluster_leader_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.WorkerInfo.t} | {:error, Tesla.Env.t}
  def worker_cluster_leader_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker/cluster/leader")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.WorkerInfo},
      {403, false},
      {503, false}
    ])
  end

  @doc """
  Checks if this node is the leader and is ready to service requests

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_cluster_leader_ready_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, boolean()} | {:error, Tesla.Env.t}
  def worker_cluster_leader_ready_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker/cluster/leader/ready")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {503, false}
    ])
  end

  @doc """
  Fetches a list of supported Pulsar IO connectors currently running in cluster mode

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%ConnectorDefinition{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_connectors_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, [PulsarAdmin.Model.ConnectorDefinition.t]} | {:error, Tesla.Env.t}
  def worker_connectors_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker/connectors")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.ConnectorDefinition},
      {400, false},
      {403, false},
      {408, false}
    ])
  end

  @doc """
  Get the status of any ongoing drain operation at this worker

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.LongRunningProcessStatus.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_drain_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.LongRunningProcessStatus.t} | {:error, Tesla.Env.t}
  def worker_drain_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker/drain")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.LongRunningProcessStatus},
      {403, false},
      {503, false}
    ])
  end

  @doc """
  Drains this worker, i.e., moves its work-assignments to other workers

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_drain_put(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def worker_drain_put(connection, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/worker/drain")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, false},
      {403, false},
      {408, false},
      {409, false},
      {503, false}
    ])
  end

  @doc """
  Get the status of any ongoing drain operation at the specified worker

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:workerId` (String.t): 

  ### Returns

  - `{:ok, PulsarAdmin.Model.LongRunningProcessStatus.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_leader_drain_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.LongRunningProcessStatus.t} | {:error, Tesla.Env.t}
  def worker_leader_drain_get(connection, opts \\ []) do
    optional_params = %{
      :workerId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/worker/leader/drain")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.LongRunningProcessStatus},
      {403, false},
      {503, false}
    ])
  end

  @doc """
  Drains the specified worker, i.e., moves its work-assignments to other workers

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:workerId` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_leader_drain_put(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def worker_leader_drain_put(connection, opts \\ []) do
    optional_params = %{
      :workerId => :query
    }

    request =
      %{}
      |> method(:put)
      |> url("/worker/leader/drain")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, false},
      {403, false},
      {408, false},
      {409, false},
      {503, false}
    ])
  end

  @doc """
  Triggers a rebalance of functions to workers

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_rebalance_put(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def worker_rebalance_put(connection, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/worker/rebalance")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, false},
      {403, false},
      {408, false}
    ])
  end

  @doc """
  Get metrics for all functions owned by worker
  Requested should be executed by Monitoring agent on each worker to fetch the metrics

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%WorkerFunctionInstanceStats{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_stats_functionsmetrics_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, [PulsarAdmin.Model.WorkerFunctionInstanceStats.t]} | {:error, Tesla.Env.t}
  def worker_stats_functionsmetrics_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker-stats/functionsmetrics")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.WorkerFunctionInstanceStats},
      {401, false},
      {503, false}
    ])
  end

  @doc """
  Gets the metrics for Monitoring
  Request should be executed by Monitoring agent on each worker to fetch the worker-metrics

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%Metrics{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec worker_stats_metrics_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, [PulsarAdmin.Model.Metrics.t]} | {:error, Tesla.Env.t}
  def worker_stats_metrics_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/worker-stats/metrics")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.Metrics},
      {401, false},
      {503, false}
    ])
  end
end
