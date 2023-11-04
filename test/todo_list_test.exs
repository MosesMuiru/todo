defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList
  use TodoList

  test "greets the world" do
    assert TodoList.hello() == :world
  end

  test "creatinf a new todolist struct" do
    
  end
end
