defmodule KleosWeb.PageController do
  use KleosWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
