# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :poc_uuid_relationship,
  ecto_repos: [PocUuidRelationship.Repo]

# Configures the endpoint
config :poc_uuid_relationship, PocUuidRelationshipWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VqnLIF9X4o1B2wOBShrTPjIxAnlOeWReF+Yj+v4KI/n+b9eXum/k5MsyWntZvZDb",
  render_errors: [view: PocUuidRelationshipWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PocUuidRelationship.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "4XoeelNd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
