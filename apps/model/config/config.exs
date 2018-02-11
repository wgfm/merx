use Mix.Config

config :model, Model.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "merx",
  username: "merx",
  password: "pass",
  hostname: "localhost"
