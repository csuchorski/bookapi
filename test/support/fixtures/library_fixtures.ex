defmodule Bookapi.LibraryFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Bookapi.Library` context.
  """

  @doc """
  Generate a book.
  """
  def book_fixture(attrs \\ %{}) do
    {:ok, book} =
      attrs
      |> Enum.into(%{
        author: "some author",
        date_published: ~D[2022-06-28],
        isbn: "some isbn",
        pages_total: 42,
        publisher: "some publisher",
        title: "some title"
      })
      |> Bookapi.Library.create_book()

    book
  end
end
