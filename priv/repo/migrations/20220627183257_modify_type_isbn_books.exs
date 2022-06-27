defmodule Bookapi.Repo.Migrations.ModifyTypeIsbnBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      modify :isbn, :string
    end
  end
end
