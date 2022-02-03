import Config

config :oban_drain_bug, ecto_repos: [ObanDrainBug.Repo]

config :oban_drain_bug, ObanDrainBug.Repo,
  username: "postgres",
  password: "postgres",
  database: "oban_drain_bug_test",
  hostname: "localhost"
