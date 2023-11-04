defmodule TodoList do

  alias TodoList.MultiDict

  # defstruct auto_id: 1, entries:

  def new, do: MultiDict.new()

  def add_entry(todo_list, entry) do
    MultiDict.add(todo_list,entry.date, entry)
  end

  # this is to get the entries of the elemets

  def entries(todo_list, date) do
    # if the list is empty == []
    MultiDict.get(todo_list, date)
  end
end


