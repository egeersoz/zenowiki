defmodule Zenowiki.Router do
  use Zenowiki.Web, :router
  use Coherence.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session
  end

  pipeline :protected do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session, protected: true
  end

  scope "/" do
    pipe_through :browser
    coherence_routes
  end

  scope "/" do
    pipe_through :protected
    coherence_routes :protected
  end

  scope "/", Zenowiki do
    pipe_through :browser

    # get "/", PageController, :index
  end

  scope "/", Zenowiki do
    pipe_through :protected
    get "/", PostController, :index
    resources "/users", UserController
    resources "/posts", PostController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Zenowiki do
  #   pipe_through :api
  # end
end
