defmodule KleosWeb.WindowView do
  use KleosWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="h-full flex flex-col mx-16">
      <div class="flex gap-1 border rounded-t-lg">
        <%= for tab <- @tabs do %>
          <div
            class={[
              "px-4 border-r rounded-lg cursor-pointer",
              @selected_tab == tab && "bg-gray-200"
            ]}
            phx-click="select_tab"
            phx-target={@myself}
            phx-value-tab={tab}
          >
            {tab}
          </div>
        <% end %>
      </div>
      <div class="flex gap-1 border items-center">
        <div class="flex gap-2 items-center px-4 py-2">
          <.icon name="hero-arrow-left" id="back_button" />
          <.icon name="hero-arrow-right" id="forwards_button" />
          <.icon name="hero-arrow-path" id="refresh_button" />
          <.icon name="hero-home" id="home_button" />
        </div>
        <div class="px-16 border rounded-xl">URL bar</div>
      </div>
      <div class="border-r border-l border-b flex bg-white rounded-b-lg flex-1 mb-4">
        <div class="flex w-full mb-2">
          <%= case @selected_tab do %>
            <% "Google" -> %>
              <div class="p-4">
                <h1 class="text-2xl text-black">Google</h1>
                <p class="text-black">Google content goes here.</p>
              </div>
            <% "FaceCard" -> %>
              <div class="p-4">
                <h1 class="text-2xl text-black">FaceCard</h1>
                <p class="text-black">FaceCard content goes here.</p>
              </div>
            <% _ -> %>
              <p class="text-black p-4">No tab selected</p>
          <% end %>
        </div>
      </div>
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, selected_tab: nil)}
  end

  def update(assigns, socket) do
    socket =
      socket
      |> assign(assigns)
      |> assign_new(:selected_tab, fn -> List.first(assigns.tabs) end)

    {:ok, socket}
  end

  def handle_event("select_tab", %{"tab" => tab}, socket) do
    {:noreply, assign(socket, selected_tab: tab)}
  end
end
