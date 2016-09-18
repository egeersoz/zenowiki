defmodule Zenowiki.UserTest do
  use Zenowiki.ModelCase

  alias Zenowiki.User

  @valid_attrs %{email: "some content", name: "some content", profile_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
