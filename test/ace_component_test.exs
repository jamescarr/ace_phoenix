defmodule AceComponentTest do
  use ExUnit.Case
  doctest AceComponent

  test "greets the world" do
    assert AceComponent.hello() == :world
  end
end
