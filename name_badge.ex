defmodule NameBadge do
  def print(id, name, department) do
    if id == nil and department != nil do
      name <> " - " <> String.upcase(department)
    else
    if id == nil or department == nil do
      cond do
        department == nil and id != nil -> "[" <> to_string(id) <> "] - " <> name <> " - OWNER"
        department == nil and id == nil -> name <> " - OWNER"
      end
    else
      "[" <> to_string(id) <> "] - " <> name <> " - " <> String.upcase(department)
    end
  end
  end
end
