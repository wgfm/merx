defmodule Merch.Band do
  use Ecto.Schema

  schema "bands" do
    field :name, :string

    has_many :items, Merch.Item
  end
end
