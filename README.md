# Pulsar Admin

Elixir client for the [Pulsar Admin REST API](https://pulsar.apache.org/admin-rest-api/).


## Installation

If [available in Hex][], the package can be installed by adding `pulsar_admin` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:pulsar_admin, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/pulsar_admin][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :pulsar_admin, base_url: "/admin/v2"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`PulsarAdmin.Connection.new/1`:

```elixir
client = PulsarAdmin.Connection.new(base_url: "/admin/v2")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/pulsar_admin
