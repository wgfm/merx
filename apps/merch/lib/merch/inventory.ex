defmodule Merch.Inventory do
  use Ecto.Schema

  schema "inventories" do
    field :name, :string
    field :date, :date

    has_many :inventory_items, Merch.InventoryItem
  end
end
