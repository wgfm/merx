defmodule Band do
  require Ecto.Query

  alias Ecto.Query
  alias Merch.Repo

  def by_id(id) do
    Merch.Band
    |> Repo.get(id)
  end

  def by_name(name) do
    Merch.Band
    |> Query.where(name: ^name)
    |> Query.first
    |> Repo.one
  end

  def add(band = %Merch.Band{}) do
    Repo.insert(band)
  end

  def all() do
    Merch.Band
    |> Repo.all
  end
end
