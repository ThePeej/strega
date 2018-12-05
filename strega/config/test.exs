use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :strega, StregaWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :strega, Strega.Repo,
  username: "postgres",
  password: "postgres",
  database: "strega_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# for faster testing: reduce number of rounds (as suggested by comeonin)
# config :argon2_elixir,
#   t_cost: 1,
#   m_cost: 8
# config :bcrypt_elixir, log_rounds: 4
# config :pbkdf2_elixir, rounds: 1
