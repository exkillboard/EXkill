defmodule Exkill.Router do
  use Exkill.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Exkill do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    # 301 redirect /detail/:id to /kill/:id
    get "/detail/:id", KillController, :show_redirect
    # 301 redirect /detail/:id/:pageview to /kill/:id/:pageview
    get "/detail/:id/:pageview", KillController, :show_redirect
    # /kill/:id/:pageview --- what's pageview do?
    get "/kill/:id", KillController, :show

    get "/kills", KillController, :index
    get "/kills/page/:page", KillController, :index
    get "/kills/:type", KillController, :index # can these be combined?
    get "/kills/:type/page/:page", KillController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Exkill do
  #   pipe_through :api
  # end
end
