defmodule NovelEngineTest do
  use ExUnit.Case
  doctest NovelEngine

  test "greets the world" do
    assert NovelEngine.hello() == :world
  end
end
