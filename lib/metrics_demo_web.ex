defmodule MetricsDemoWeb do
  @moduledoc """
  Entry point for defining your web interface (controllers, routers, etc).
  """

  def controller do
    quote do
      use Phoenix.Controller,
        formats: [:html, :json],
        layouts: [html: MetricsDemoWeb.Layouts] # can be stubbed

      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
