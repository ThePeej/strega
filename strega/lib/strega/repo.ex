defmodule Strega.Repo do
  use Ecto.Repo,
    otp_app: :strega,
    adapter: Ecto.Adapters.Postgres
end
