defmodule Structt.Repo do
  use Ecto.Repo,
    otp_app: :structt,
    adapter: Ecto.Adapters.Postgres
end
