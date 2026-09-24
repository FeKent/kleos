defmodule KleosWeb.Landing.LandingPage do
  use Phoenix.LiveView

  alias KleosWeb.TabViews.LoadingView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, tabs: ["Home", "Google", "FaceCard"], loading_count: 0)}
  end

  def handle_info(:loading, socket) do
    loading_count = socket.assigns.loading_count

    if loading_count < 4 do
      send_update(LoadingView, id: "Loading View", loading_tick: true, reset_message: false)
      Process.send_after(self(), :loading, 1000)

      socket =
        socket
        |> assign(loading_count: loading_count + 1)

      {:noreply, socket}
    else
      send_update(LoadingView, id: "Loading View", reset_message: true)
      Process.send_after(self(), :loading, 1000)

      socket =
        socket
        |> assign(loading_count: 0)

      {:noreply, socket}
    end
  end
end
