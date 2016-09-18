defmodule Zenowiki.PostView do
  use Zenowiki.Web, :view
  alias Zenowiki.Repo
  alias Zenowiki.User
  import Ecto
  import Ecto.Query

  def get_user_name(id) do
  	Repo.get!(User, id).name
  end
end
