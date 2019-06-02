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
    Auction.Item
    |> struct(attrs)
    |> @repo.insert()
  end

  def delete_item(%Auction.Item{} = item), do: @repo.delete(item)
end
