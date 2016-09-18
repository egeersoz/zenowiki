defmodule Zenowiki.PageController do
  use Zenowiki.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
