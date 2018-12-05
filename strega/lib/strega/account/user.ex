defmodule Strega.Account.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :token, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    IO.puts("CHANGESET ATTRS")
    IO.inspect(attrs)
    IO.puts("++++++++++++")
    user
    |> cast(attrs, [:name, :email, :token])
    |> validate_required([:name, :email, :token])
  end
end
