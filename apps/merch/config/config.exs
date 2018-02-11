use Mix.Config

config :merch, Merch.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "merx",
  username: "merx",
  password: "pass",
  hostname: "localhost"
