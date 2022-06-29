defmodule Bookapi.Library.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :author, :string
    field :date_published, :date
    field :isbn, :string
    field :pages_total, :integer
    field :publisher, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:author, :title, :isbn, :date_published, :publisher, :pages_total])
    |> validate_required([:author, :title, :isbn, :date_published, :publisher, :pages_total])
  end
end
