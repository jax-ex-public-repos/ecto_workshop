# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ecto_workshop,
  ecto_repos: [EctoWorkshop.Repo]

# Configures the endpoint
config :ecto_workshop, EctoWorkshopWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ycqLdul0ESX5xiXNhJtZLE2kT+4fSAxqg/6a+oe3+FlQOfRtXlxJy/yX5lgfhT4I",
  render_errors: [view: EctoWorkshopWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EctoWorkshop.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
