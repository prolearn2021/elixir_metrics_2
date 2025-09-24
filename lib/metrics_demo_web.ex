defmodule MetricsDemoWeb do
  def controller do
    quote do
      use Phoenix.Controller, namespace: MetricsDemoWeb
      import Plug.Conn
      import Phoenix.Controller, only: [text: 2]  # optional, but explicit
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
    end
  end

  # IMPORTANT: this must be a MACRO
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
