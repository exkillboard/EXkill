defmodule Exkill.Web.PageController do
  use Exkill.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
