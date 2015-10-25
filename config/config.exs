use Mix.Config

config :hello_ecto, HelloEcto.Repo,
  adapter: Ecto.Adapters.Postgres,
  hostname: "localhost",
  database: "hello_ecto",
  username: "postgres",
  password: "postgres"

import_config "#{Mix.env}.exs"
