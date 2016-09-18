# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Zenowiki.Repo.insert!(%Zenowiki.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Zenowiki.Repo.delete_all Zenowiki.User

Zenowiki.User.changeset(%Zenowiki.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Zenowiki.Repo.insert!