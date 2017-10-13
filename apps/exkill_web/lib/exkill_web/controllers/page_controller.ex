defmodule ExkillWeb.PageController do
  use ExkillWeb, :controller

  def index(conn, _params) do
    render conn, "index.html", page_title: "Home", top_isk: %{}, sponsored: []
  end
end
