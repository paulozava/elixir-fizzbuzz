defmodule ElixirFizzbuzzTest do
  use ExUnit.Case
  doctest ElixirFizzbuzz

  test "greets the world" do
    assert ElixirFizzbuzz.hello() == :world
  end
end
