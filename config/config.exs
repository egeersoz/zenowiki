# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :zenowiki,
  ecto_repos: [Zenowiki.Repo]

# Configures the endpoint
config :zenowiki, Zenowiki.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4sR5yhTTWxmZpvaKvr8LmAm7bGEcl6Sa1wRyxGQz8ttQzj2pGJwsLJsla5kIR0e0",
  render_errors: [view: Zenowiki.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Zenowiki.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Zenowiki.User,
  repo: Zenowiki.Repo,
  module: Zenowiki,
  logged_out_url: "/",
  email_from: {"Zeno Wiki", "zenowiki@zenoimaging.com"},
  opts: [:rememberable, :invitable, :confirmable, :authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, Zenowiki.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "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"
# %% End Coherence Configuration %%
