defmodule KleosWeb.WindowView do
  use KleosWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="h-full flex flex-col">
      <div class="mx-4 flex gap-1 border rounded-t-lg">
        <div class="px-4 border-r rounded-lg">Tab</div>
        <div class="px-4 border-r rounded-lg">Tab 2</div>
      </div>
      <div class="mx-4 flex gap-1 border">
        <div class="px-4 border-r rounded-lg">Back</div>
        <div class="px-4 border-r rounded-lg">Home</div>
        <div class="px-16 border-r rounded-lg">URL bar</div>
      </div>
      <div class="mx-4 border-r border-l border-b flex rounded-b-lg flex-1 min-h-0 mb-4"></div>
    </div>
    """
  end
end
