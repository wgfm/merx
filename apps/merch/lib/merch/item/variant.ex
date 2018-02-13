defmodule Merch.Item.Variant do
  use Ecto.Schema

  schema "item_variants" do
    field :variant, :string

    belongs_to :item, Merch.Item
  end
end
