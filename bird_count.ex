defmodule BirdCount do
  def today(list) when list != nil do
    List.first(list)
  end
  def increment_day_count(list) when list != nil do
    if list != [] do
      List.update_at(list, 0, fn x -> x + 1 end)
    else
      new_list = [1]
    end
  end
  def has_day_without_birds?(list) when list != nil do
    return = 0 in list
  end
  def total(list) do
    Enum.sum(list)
  end
  def busy_days(list) do
    Enum.count(list, fn x -> x >= 5 end)
  end
end
