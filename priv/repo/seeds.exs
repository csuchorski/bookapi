# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Bookapi.Repo.insert!(%Bookapi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Bookapi.Repo.insert!(%Bookapi.Library.Book{
  title: "Mistborn Book 1 - Final Empire",
  author: "Brandon Sanderson",
  pages_total: 650,
  isbn: "9_780_765_311_788",
  publisher: "Gollancz",
  date_published: ~D[2006-01-01]
})

Bookapi.Repo.insert!(%Bookapi.Library.Book{
  title: "Unsouled - Cradle Book 1",
  author: "Will Wight",
  pages_total: 300,
  isbn: "9_780_989_671_767",
  publisher: "Hidden Gnome Publishing",
  date_published: ~D[2017-01-01]
})

Bookapi.Repo.insert!(%Bookapi.Library.Book{
  title: "The Fifth Season",
  author: "N. K. Jemisin",
  pages_total: 512,
  isbn: "9_780_316_229_296",
  publisher: "Orbit",
  date_published: ~D[2006-01-01]
})
