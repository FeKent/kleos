defmodule KleosWeb.WindowView do
  use KleosWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="h-full flex flex-col mx-16">
      <div class="flex gap-1 border rounded-t-lg">
        <%= for tab <- @tabs do %>
          <div class="px-4 border-r rounded-lg">
            {tab}
          </div>
        <% end %>
      </div>
      <div class="flex gap-1 border items-center">
        <.icon name="hero-arrow-left" id="back_button" class="ml-4" />
        <div class="px-4 border-r rounded-lg">Home</div>
        <div class="px-16 border-r rounded-lg">URL bar</div>
      </div>
      <div class="border-r border-l border-b flex bg-white rounded-b-lg flex-1 mb-4"></div>
    </div>
    """
  end

  def mount(socket) do
    {:ok, socket}
  end
end
