defmodule LanguageList do
  def new() do
    # Please implement the new/0 function
    return = []
  end
  def add(list, language) do
    # Please implement the add/2 function
    return = [language | list]
  end
  def remove(list) do
    # Please implement the remove/1 function
    return = List.delete_at(list, 0)
  end
  def first(list) do
    # Please implement the first/1 function
    return = List.first(list)
  end
  def count(list) do
    # Please implement the count/1 function
    return = length(list)
  end
  def functional_list?(list) do
    # Please implement the functional_list?/1 function
    return = "Elixir" in list
  end
end
