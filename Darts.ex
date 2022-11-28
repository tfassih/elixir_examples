defmodule Darts do
  @type position :: {number, number}
  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    return = hit_check({x, y})
  end
  def hit_check({x, y}) do
    cond do
      (abs(x) <= 0.7 or abs(y) <= 0.7) and (abs(x) + abs(y) <= 1 or x == y) ->
        IO.inspect(10)
      (abs(x) <= 5 or abs(y) <= 5) and (abs(x) + abs(y) <= 5 or x + y == 0) ->
        IO.inspect(5)
      (abs(x) <= 10 or abs(y) <= 10) and (abs(x) + abs(y) <= 14 or x + y == 0 and abs(x) != abs(y)) ->
        IO.inspect(1)
      (abs(x) > 7 or abs(y) > 7) or x + y == 0 or x + y > 10 ->
        IO.inspect(0)
    end
  end
end
