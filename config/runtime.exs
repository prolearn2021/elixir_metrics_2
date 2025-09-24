import Config

# Start the server when PHX_SERVER is set (Phoenix default)
if System.get_env("PHX_SERVER") do
  config :metrics_demo, MetricsDemoWeb.Endpoint, server: true
end

# Statix / DogStatsD runtime config (works in dev & prod)
if config_env() in [:dev, :prod] do
  host = System.get_env("STATSD_HOST", "datadog-agent")
  port = System.get_env("STATSD_PORT", "8125") |> String.to_integer()

  env     = System.get_env("DD_ENV", "local")
  service = System.get_env("DD_SERVICE", "metrics_demo")
  version = System.get_env("DD_VERSION", "0.1.0")

  config :statix, MetricsDemo.Statsd,
    host: host,
    port: port,
    tags: ["env:" <> env, "service:" <> service, "version:" <> version]
end
