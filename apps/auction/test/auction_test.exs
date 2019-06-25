defmodule AuctionTest do
  use ExUnit.Case
  alias Auction.{Repo}
  doctest Auction

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "the truth" do
    assert true
  end
end
