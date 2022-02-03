defmodule ObanDrainBug.Repo.Migrations.AddObanJobsTable do
  use Ecto.Migration
  require Logger

  def up do
    Oban.Migrations.up()


  end

  def down do
    Oban.Migrations.down(version: 1)


  end
end
