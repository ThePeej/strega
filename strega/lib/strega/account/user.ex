defmodule Strega.Account.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Comeonin.Bcrypt, only: [hashpwsalt: 1]

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> validate_format(:email, ~r/@/, message: "is invalid")
    |> unique_constraint(:email)
    |> put_hashed_password()
  end

  defp put_hashed_password(changeset) do
    case changeset.valid? do
      true ->
        changes = changeset.changes
        put_change(changeset, :password_hash, hashpwsalt(changes.password))
      _ ->
        changeset
    end
  end
end
