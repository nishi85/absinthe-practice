# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :graphql_api,
  ecto_repos: [GraphqlApi.Repo]

# Configures the endpoint
config :graphql_api, GraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X7DC8/NclMOsam0tEy7JNxAOUMMl4NSpS0WFTof+1sxXFE6FIsBkXKByJCkCFhR0",
  render_errors: [view: GraphqlApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: GraphqlApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

#Guardian Config details
config :graphql_api, GraphqlApi.Guardian,
       issuer: "graphql_api",
       secret_key: "a5cv8bi/MeC+d445Y3zfqbpIZ6IBwcqdHaPZBge3ejFLTLAWKUwkQvMM/W+62xvQ"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
