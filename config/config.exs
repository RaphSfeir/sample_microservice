# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sample_microservice,
  ecto_repos: [SampleMicroservice.Repo]

# Configures the endpoint
config :sample_microservice, SampleMicroservice.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9XpCu6zKm8H0ITgLpcZv6QYbTVdzyA90nXvraj5Csq29NKwC80pQodVL04Yh6QmG",
  render_errors: [view: SampleMicroservice.ErrorView, accepts: ~w(json)],
  pubsub: [name: SampleMicroservice.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure Dayron
config :sample_microservice, SampleMicroservice.KongAdminRepo,
  url: "https://admin-gateway.pow.tf"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
