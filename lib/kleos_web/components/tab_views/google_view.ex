defmodule KleosWeb.TabViews.GoogleView do
  use KleosWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="p-4">
      <h1 class="text-2xl text-black">Google</h1>
      <p class="text-black">Google content goes here.</p>
    </div>
    """
  end
end
