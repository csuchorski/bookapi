defmodule Bookapi.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :total_pages, :integer
      add :isbn, :integer
      add :publisher, :string
      add :published_date, :date

      timestamps()
    end
  end
end
