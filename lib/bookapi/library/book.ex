defmodule Bookapi.Library.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :isbn, :integer
    field :published_date, :date
    field :publisher, :string
    field :title, :string
    field :total_pages, :integer

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :total_pages, :isbn, :publisher, :published_date])
    |> validate_required([:title, :total_pages, :isbn, :publisher, :published_date])
  end
end
