defmodule MetricsDemoWeb.MetricsController do
  use MetricsDemoWeb, :controller
  alias MetricsDemo.Metrics

  def test(conn, _params) do
    Metrics.demo_burst()
    text(conn, "sent DogStatsD metrics")
  end
end
