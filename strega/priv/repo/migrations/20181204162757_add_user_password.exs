defmodule Strega.Repo.Migrations.AddUserPassword do
  use Ecto.Migration

  def change do
    add :token, :string
  end
end
