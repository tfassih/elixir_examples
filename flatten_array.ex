defmodule FlattenArray do

  @spec flatten(list) :: list
  def flatten(list) do
    list
        |> List.flatten()
        |> Enum.reject(fn x -> x == nil end)
  end
end
