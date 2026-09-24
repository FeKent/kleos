defmodule KleosWeb.TabViews.HomeView do
  use KleosWeb, :live_component

  def render(assigns) do
    ~H"""
    <p class="text-black p-4">No tab selected</p>
    """
  end
end
