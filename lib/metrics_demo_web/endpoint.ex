# lib/metrics_demo_web/endpoint.ex
defmodule MetricsDemoWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :metrics_demo

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session, store: :cookie, key: "_metrics_demo_key", signing_salt: "dev"

  plug MetricsDemoWeb.Router
end
