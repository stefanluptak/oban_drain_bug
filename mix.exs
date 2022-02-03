defmodule ObanDrainBug.MixProject do
  use Mix.Project

  def project do
    [
      app: :oban_drain_bug,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      config_path: "config/config.exs"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ObanDrainBug.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:oban, "~> 2.10"},
      {:ecto, "~> 3.7"},
      {:ecto_sql, "~> 3.7"}
    ]
  end
end
