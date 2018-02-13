defmodule Merch.Item do
  use Ecto.Schema

  schema "items" do
    field :name, :string
    field :type, :string
    field :price, :decimal

    belongs_to :band, Merch.Band

    has_many :variants, Merch.Item.Variant
  end
end
