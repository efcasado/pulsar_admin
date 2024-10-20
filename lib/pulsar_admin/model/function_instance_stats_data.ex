# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.FunctionInstanceStatsData do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :avgProcessLatency,
    :lastInvocation,
    :oneMin,
    :processedSuccessfullyTotal,
    :receivedTotal,
    :systemExceptionsTotal,
    :userExceptionsTotal,
    :userMetrics
  ]

  @type t :: %__MODULE__{
    :avgProcessLatency => float() | nil,
    :lastInvocation => integer() | nil,
    :oneMin => PulsarAdmin.Model.FunctionInstanceStatsDataBase.t | nil,
    :processedSuccessfullyTotal => integer() | nil,
    :receivedTotal => integer() | nil,
    :systemExceptionsTotal => integer() | nil,
    :userExceptionsTotal => integer() | nil,
    :userMetrics => %{optional(String.t) => float()} | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:oneMin, :struct, PulsarAdmin.Model.FunctionInstanceStatsDataBase)
  end
end

