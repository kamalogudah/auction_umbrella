defmodule Auction do
  @moduledoc """
  Documentation for Auction.
  """
  alias Auction.Item

  @repo Auction.Repo

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

  def insert_item(attrs) do
    %Item{}
    |> Item.changeset(attrs)
    |> @repo.insert()
  end

  def new_item, do: Item.changeset(%Item{})

  def delete_item(%Auction.Item{} = item), do: @repo.delete(item)

  def update_item(%Auction.Item{} = item, updates) do
    item
    |> Item.changeset(updates)
    |> @repo.update()
  end
end
