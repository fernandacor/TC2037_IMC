defmodule Tarea22Test do
  use ExUnit.Case
  doctest Tarea22

  test "greets the world" do
    assert Tarea22.hello() == :world
  end

  test "double the number" do
    assert Tarea22.double(0) == 0
    assert Tarea22.double(1) == 2
    assert Tarea22.double(4) == 8
    assert Tarea22.double(-4) == -8
  end
end
