defmodule BookapiWeb.BookView do
  use BookapiWeb, :view
  alias BookapiWeb.BookView

  def render("index.json", %{books: books}) do
    %{data: render_many(books, BookView, "book.json")}
  end

  def render("show.json", %{book: book}) do
    %{data: render_one(book, BookView, "book.json")}
  end

  def render("book.json", %{book: book}) do
    %{
      id: book.id,
      author: book.author,
      title: book.title,
      isbn: book.isbn,
      date_published: book.date_published,
      publisher: book.publisher,
      pages_total: book.pages_total
    }
  end
end
