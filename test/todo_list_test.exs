defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList



  test "creatinf a new todolist struct" do
    assert TodoList.new == %{}
  end

  test "creatigna new entry" do
    todo_list = TodoList.new
    entry = %{date: ~D[2020-02-02], title: "dentitst"}
    assert TodoList.add_entry(todo_list, entry) == %{~D[2020-02-02] => [%{date: ~D[2020-02-02], title: "dentitst"}]}
  end
end
