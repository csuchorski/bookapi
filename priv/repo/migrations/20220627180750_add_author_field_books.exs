defmodule Bookapi.Repo.Migrations.AddAuthorFieldBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :author, :string
    end
  end
end
