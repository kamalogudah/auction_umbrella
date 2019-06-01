defmodule Auction do
  @moduledoc """
  Documentation for Auction.
  """
  alias Auction.{FakeRepo, Item}

  @repo FakeRepo

  @doc """
  List Items.

  ## Examples

      iex> Auction.list_items()
      :world

  """

  def list_items do
    @repo.all(Item)
  end

  def get_item(id) do
    @repo.get!(Item, id)
  end

  def get_item_by(attrs) do
    @repo.get_by(Item, attrs)
  end
end
