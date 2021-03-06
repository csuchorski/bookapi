defmodule Bookapi.LibraryTest do
  use Bookapi.DataCase

  alias Bookapi.Library

  describe "books" do
    alias Bookapi.Library.Book

    import Bookapi.LibraryFixtures

    @invalid_attrs %{author: nil, date_published: nil, isbn: nil, pages_total: nil, publisher: nil, title: nil}

    test "list_books/0 returns all books" do
      book = book_fixture()
      assert Library.list_books() == [book]
    end

    test "get_book!/1 returns the book with given id" do
      book = book_fixture()
      assert Library.get_book!(book.id) == book
    end

    test "create_book/1 with valid data creates a book" do
      valid_attrs = %{author: "some author", date_published: ~D[2022-06-28], isbn: "some isbn", pages_total: 42, publisher: "some publisher", title: "some title"}

      assert {:ok, %Book{} = book} = Library.create_book(valid_attrs)
      assert book.author == "some author"
      assert book.date_published == ~D[2022-06-28]
      assert book.isbn == "some isbn"
      assert book.pages_total == 42
      assert book.publisher == "some publisher"
      assert book.title == "some title"
    end

    test "create_book/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Library.create_book(@invalid_attrs)
    end

    test "update_book/2 with valid data updates the book" do
      book = book_fixture()
      update_attrs = %{author: "some updated author", date_published: ~D[2022-06-29], isbn: "some updated isbn", pages_total: 43, publisher: "some updated publisher", title: "some updated title"}

      assert {:ok, %Book{} = book} = Library.update_book(book, update_attrs)
      assert book.author == "some updated author"
      assert book.date_published == ~D[2022-06-29]
      assert book.isbn == "some updated isbn"
      assert book.pages_total == 43
      assert book.publisher == "some updated publisher"
      assert book.title == "some updated title"
    end

    test "update_book/2 with invalid data returns error changeset" do
      book = book_fixture()
      assert {:error, %Ecto.Changeset{}} = Library.update_book(book, @invalid_attrs)
      assert book == Library.get_book!(book.id)
    end

    test "delete_book/1 deletes the book" do
      book = book_fixture()
      assert {:ok, %Book{}} = Library.delete_book(book)
      assert_raise Ecto.NoResultsError, fn -> Library.get_book!(book.id) end
    end

    test "change_book/1 returns a book changeset" do
      book = book_fixture()
      assert %Ecto.Changeset{} = Library.change_book(book)
    end
  end
end
