defmodule Atac.Repo do
  use Ecto.Repo,
    otp_app: :atac,
    adapter: Ecto.Adapters.Postgres
end
