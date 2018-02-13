defmodule Merch.InventoryItem do
  use Ecto.Schema

  schema "inventory_items" do
    field :size, :integer
    field :quantity, :integer

    belongs_to :item, Merch.Item
    belongs_to :variant, Merch.Item.Variant
    has_many :purchases, Merch.Purchase
    belongs_to :inventory, Merch.Inventory
  end
end
