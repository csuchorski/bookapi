defmodule Bookapi.Repo do
  use Ecto.Repo,
    otp_app: :bookapi,
    adapter: Ecto.Adapters.Postgres
end
