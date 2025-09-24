defmodule MetricsDemo.Metrics do
  alias MetricsDemo.Statsd
  def demo_burst do
    Statsd.increment("app.page.hit", 1, tags: ["path:/metrics/test"])
    Statsd.gauge("app.random.value", :rand.uniform(100))
    Statsd.timing("app.work.ms", :rand.uniform(500))
    :ok
  end
  end
