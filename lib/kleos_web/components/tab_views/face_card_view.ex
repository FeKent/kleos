defmodule KleosWeb.TabViews.FaceCardView do
  use KleosWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="p-4">
      <h1 class="text-2xl text-black">FaceCard</h1>
      <p class="text-black">FaceCard content goes here.</p>
    </div>
    """
  end
end
