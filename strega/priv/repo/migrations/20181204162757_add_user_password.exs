defmodule Strega.Repo.Migrations.AddUserPassword do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :token, :string
    end
  end
end
