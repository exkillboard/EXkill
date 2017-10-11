defmodule ExkillWeb.PageController do
  use ExkillWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
