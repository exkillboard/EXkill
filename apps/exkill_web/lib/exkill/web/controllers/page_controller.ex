defmodule ExkillWeb.Web.PageController do
  use ExkillWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
