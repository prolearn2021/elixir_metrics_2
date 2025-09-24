defmodule MetricsDemoWeb.Router do
  use MetricsDemoWeb, :router

  pipeline :basic do
    plug :accepts, ["html", "json"]
  end

  scope "/", MetricsDemoWeb do
    pipe_through :basic
    get "/metrics/test", MetricsController, :test
  end
end
