import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :do_site, DoSiteWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "/O1+i4WbN8xKlgEnj8cme9IqqBjck5kjfHD8ly2iwsFvDOu2TDEaE2pxU5SxYLqq",
  server: false

# In test we don't send emails.
config :do_site, DoSite.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
