defmodule ObanDrainBug.Worker do
  use Oban.Worker

  @impl Oban.Worker
  def perform(%Oban.Job{}) do
    {:error, :not_found}
  end
end

defmodule ObanDrainBugTest do
  use ExUnit.Case
  doctest ObanDrainBug

  test "error is returned" do
    %{}
    |> ObanDrainBug.Worker.new()
    |> Oban.insert!()

    %{failure: 0, success: 1} =
      Oban.drain_queue(
        queue: :default,
        with_safety: false,
        with_recursion: true,
        with_scheduled: true
      )
  end
end
