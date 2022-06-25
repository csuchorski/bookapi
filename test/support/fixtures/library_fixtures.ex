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
        isbn: 42,
        published_date: ~D[2022-06-24],
        publisher: "some publisher",
        title: "some title",
        total_pages: 42
      })
      |> Bookapi.Library.create_book()

    book
  end
end
