defmodule MetricsDemoWeb.MetricsController do
  use MetricsDemoWeb, :controller
  alias MetricsDemo.Metrics
  alias Plug.Conn

  def test(conn, _params) do
    _ =
      try do
        Metrics.demo_burst()
      rescue
        _ -> :ok
      end

    Conn.send_resp(conn, 200, "sent DogStatsD metrics")
  end
end
