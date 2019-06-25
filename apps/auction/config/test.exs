use Mix.Config

config :auction, Auction.Repo,
  database: "auction_test",
  username: "ogudah",
  password: "password",
  hostname: "localhost",
  port: "5432",
  pool: Ecto.Adapters.SQL.Sandbox
