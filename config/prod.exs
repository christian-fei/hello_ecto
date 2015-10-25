use Mix.Config

config :hello_ecto, HelloEcto.Repo,
  adapter: Ecto.Adapters.Postgres,
  hostname: "postgres",
  database: "hello_ecto",
  username: "postgres",
  password: "postgres"
