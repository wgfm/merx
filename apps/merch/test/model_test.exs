defmodule MerchTest do
  use ExUnit.Case
  doctest Merch

  test "greets the world" do
    assert Merch.hello() == :world
  end
end
