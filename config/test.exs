import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :crypto_api, CryptoApi.Repo,
  username: "postgres",
  password: "postgres123",
  hostname: "localhost",
  database: "crypto_api_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :crypto_api, CryptoApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+HeIB2kFLbnSJbpmSSa/uiSPm89HMASN6ygFZ3zTruz0kb5G6lYXiSg/DECLXTmT",
  server: false

# In test we don't send emails.
config :crypto_api, CryptoApi.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
