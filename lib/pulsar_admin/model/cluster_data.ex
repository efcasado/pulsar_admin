# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.ClusterData do
  @moduledoc """
  The configuration data for a cluster
  """

  @derive Jason.Encoder
  defstruct [
    :authenticationParameters,
    :authenticationPlugin,
    :brokerClientCertificateFilePath,
    :brokerClientKeyFilePath,
    :brokerClientTlsEnabled,
    :brokerClientTlsEnabledWithKeyStore,
    :brokerClientTlsKeyStore,
    :brokerClientTlsKeyStorePassword,
    :brokerClientTlsKeyStoreType,
    :brokerClientTlsTrustStore,
    :brokerClientTlsTrustStorePassword,
    :brokerClientTlsTrustStoreType,
    :brokerClientTrustCertsFilePath,
    :brokerServiceUrl,
    :brokerServiceUrlTls,
    :listenerName,
    :migrated,
    :migratedClusterUrl,
    :peerClusterNames,
    :proxyProtocol,
    :proxyServiceUrl,
    :serviceUrl,
    :serviceUrlTls,
    :tlsAllowInsecureConnection
  ]

  @type t :: %__MODULE__{
    :authenticationParameters => String.t | nil,
    :authenticationPlugin => String.t | nil,
    :brokerClientCertificateFilePath => String.t | nil,
    :brokerClientKeyFilePath => String.t | nil,
    :brokerClientTlsEnabled => boolean() | nil,
    :brokerClientTlsEnabledWithKeyStore => boolean() | nil,
    :brokerClientTlsKeyStore => String.t | nil,
    :brokerClientTlsKeyStorePassword => String.t | nil,
    :brokerClientTlsKeyStoreType => String.t | nil,
    :brokerClientTlsTrustStore => String.t | nil,
    :brokerClientTlsTrustStorePassword => String.t | nil,
    :brokerClientTlsTrustStoreType => String.t | nil,
    :brokerClientTrustCertsFilePath => String.t | nil,
    :brokerServiceUrl => String.t | nil,
    :brokerServiceUrlTls => String.t | nil,
    :listenerName => String.t | nil,
    :migrated => boolean() | nil,
    :migratedClusterUrl => PulsarAdmin.Model.ClusterUrl.t | nil,
    :peerClusterNames => [String.t] | nil,
    :proxyProtocol => String.t | nil,
    :proxyServiceUrl => String.t | nil,
    :serviceUrl => String.t | nil,
    :serviceUrlTls => String.t | nil,
    :tlsAllowInsecureConnection => boolean() | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:migratedClusterUrl, :struct, PulsarAdmin.Model.ClusterUrl)
  end
end

