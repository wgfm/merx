defmodule Merch.Purchase do
  use Ecto.Schema

  schema "purchases" do
    field :price, :decimal
    belongs_to :inventory_item, Merch.InventoryItem

    timestamps()
  end
end
