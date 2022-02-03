defmodule ObanDrainBug.Repo do
  use Ecto.Repo,
    otp_app: :oban_drain_bug,
    adapter: Ecto.Adapters.Postgres
end
