defmodule Kleos.Repo do
  use Ecto.Repo,
    otp_app: :kleos,
    adapter: Ecto.Adapters.Postgres
end
