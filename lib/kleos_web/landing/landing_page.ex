defmodule KleosWeb.Landing.LandingPage do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, tabs: ["Google", "FaceCard"])}
  end
end
