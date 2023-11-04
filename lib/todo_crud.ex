defmodule TodoList.Crud do

  defstruct auto_id: 1, entries: %{}
  # creats new instance of the module
  def new(), do: %__MODULE__{}

  def add_entry(todo_list, entry) do
      entry = Map.put(entry, :id, todo_list.auto_id)

      # this is used to update the map
      new_entries = Map.put(
        todo_list.entries,
        todo_list.auto_id,
        entry
      )

        %TodoList.Crud{
          todo_list | entries: new_entries, auto_id: todo_list.auto_id + 1
        }
  end

  # this is for reading based on a date given
  def entries(todo_list, date) do
    todo_list.entries
    |> Stream.filter(fn{_, entry} -> entry.date == date end)#returns a new enum with the specific date
    |> Enum.map(fn {_, entry} -> entry end) # takes only vaues

  end

  # an update function
  def update_entry(todo_list, entry_id, updater_fun) do
    case Map.fetch(todo_list, entry_id) do
      :error -> todo_list
      {:ok, old_entry} ->
                        new_entry = updater_fun.(old_entry)
                        new_entries = Map.put(todo_list.entries, new_entry.id, new_entry)
                        %TodoList.Crud{todo_list | entries: new_entries}
    end
  end

  def delete_todo(todo_list, todo_id) do
    IO.puts(todo_id)
    todos = todo_list.entries
    new_todos = Map.delete(todos, todos[todo_id].id)
    # my_to = %{todos | new_todos}


    %TodoList.Crud{todo_list | entries: new_todos}

  #  inspect new


  end

end
