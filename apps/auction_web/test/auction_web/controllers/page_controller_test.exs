defmodule AuctionWeb.PageControllerTest do
  use AuctionWeb.ConnCase
  use ExUnit.Case
  alias Auction.{Repo}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
  end
end
