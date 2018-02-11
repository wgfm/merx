use Mix.Config

config :model, Model.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "model_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"
