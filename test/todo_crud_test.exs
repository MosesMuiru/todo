defmodule TodoCrudTest do
  use ExUnit.case

  test "creating a new todocrud stuct" do
    assert TodoList.Crud.new == %{}
  end

  test "adding new entry in the todo" do
    todo = TodoList.Crud.new
    entry =  %{date: ~D[2018-12-19], id: 1, title: "Dentist"}
    TodoList.Crud(todo, entry) = %{auto_id, entries: %{1 => %{date: ~D[2018-12-19], id: 1, title: "Dentist"},}}
  end
end
