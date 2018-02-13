defmodule Merch.Repo.Migrations.CreateDomain do
  use Ecto.Migration

  def change do
    create_bands_table()
    create_items_table()
    create_item_variants_table()
    create_inventories_table()
    create_inventory_items_table()
    create_purchases_table()
  end

  defp create_bands_table do
    create table("bands") do
      add :name, :string, size: 64
    end
  end

  defp create_items_table do
    create table("items") do
      add :name, :string, size: 64
      add :type, :string, size: 16
      add :price, :decimal
      add :band_id, references(:bands)
    end
  end

  defp create_item_variants_table do
    create table("item_variants") do
      add :variant, :string, size: 32
      add :item_id, references(:items)
    end
  end

  defp create_inventories_table do
    create table("inventories") do
      add :name, :string, size: 128
      add :date, :date
    end
  end

  defp create_inventory_items_table do
    create table("inventory_items") do
      add :size, :string, size: 16
      add :quantity, :integer
      add :item_id, references(:items)
      add :variant_id, references(:item_variants)
      add :inventory_id, references(:inventories)
    end
  end

  defp create_purchases_table do
    create table("purchases") do
      add :price, :decimal
      add :inventory_item_id, references(:inventory_items)
      timestamps()
    end
  end
end
