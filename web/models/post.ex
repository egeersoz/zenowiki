defmodule Zenowiki.Post do
  use Zenowiki.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string
    field :views, :integer, default: 0
    belongs_to :user, Zenowiki.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :views, :user_id])
    |> validate_required([:title, :body])
  end
end
