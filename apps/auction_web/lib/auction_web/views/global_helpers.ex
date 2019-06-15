defmodule AuctionWeb.GlobalHelpers do
  def integer_to_currency(amount) do
    dollars_and_cents =
      amount
      |> Decimal.div(100)
      |> Decimal.round(2)
      "$#{dollars_and_cents}"
  end
end
