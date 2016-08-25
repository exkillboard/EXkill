defmodule Exkill.KillController do
  use Exkill.Web, :controller

  # GET /kills
  def index(conn, %{}) do
    render conn, "index.html"
  end

  # GET /kills/page/:page
  def index(conn, %{"page" => page}) do
    render conn, "index.html"
  end

  # GET /kills/:type
  def index(conn, %{"type" => type}) do
    render conn, "index.html"
  end

  # GET /kills/:type/page/:page
  def index(conn, %{"type" => type, "page" => page}) do
    render conn, "index.html"
  end

  # GET /kill/:id
  def show(conn, %{"id" => id}) do
    render conn, "show.html"
  end


  # GET /detail/:id
  def show_redirect(conn, %{"id" => id}) do
    redirect conn, to: "/kill/#{id}"
  end

  # GET /detail/:id/:pageview
  def show_redirect(conn, %{"id" => id, "pageview" => pageview}) do
    redirect conn, to: "/kill/#{id}/#{pageview}"
  end
end
