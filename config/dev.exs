# config/dev.exs
import Config

config :metrics_demo, MetricsDemoWeb.Endpoint,
  http: [ip: {0, 0, 0, 0}, port: String.to_integer(System.get_env("PHX_PORT") || "4000")],
  check_origin: false,
  code_reloader: false,  # <= set to false
  debug_errors: true,
  secret_key_base: "dev"

config :logger, level: :debug
