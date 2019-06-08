defmodule AuctionWeb.SessionController do
  use AuctionWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html")
  end
end
