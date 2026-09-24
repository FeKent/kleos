defmodule KleosWeb.TabViews.LoadingView do
  use KleosWeb, :live_component

  def mount(socket) do
    Process.send_after(self(), :loading, 1000)

    socket =
      socket
      |> assign(loading_message: "Loading")

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="text-black">
      {@loading_message}
    </div>
    """
  end

  def update(assigns, socket) do
    socket =
      if Map.get(assigns, :reset_message, false) do
        assign(socket, :loading_message, "Loading")
      else
        socket
      end

    socket =
      if Map.get(assigns, :loading_tick, false) do
        current_loading = socket.assigns.loading_message
        assign(socket, :loading_message, current_loading <> ".")
      else
        socket
      end

    {:ok, socket}
  end
end
