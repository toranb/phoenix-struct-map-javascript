use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :structt, StructtWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :structt, Structt.Repo,
  username: "postgres",
  password: "postgres",
  database: "structt_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
