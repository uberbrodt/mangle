defmodule MangleTest do
  use ExUnit.Case
  doctest Mangle

  test "greets the world" do
    assert Mangle.hello() == :world
  end
end
