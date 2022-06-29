defmodule Bookapi.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :author, :string
      add :title, :string
      add :isbn, :string
      add :date_published, :date
      add :publisher, :string
      add :pages_total, :integer

      timestamps()
    end
  end
end
