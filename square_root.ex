defmodule SquareRoot do
  @doc """
  Calculate the integer square root of a positive integer
  """
  def calculate(radicand) do
    counter = 1
    if radicand == 1, do: radicand, else: get_sqrt(radicand, counter)
  end
  defp get_sqrt(radicand, counter) do
    x = radicand
    next_x = ((x - counter) * (x - counter))
    if next_x == x, do: x - counter, else: get_sqrt(x, counter + 1)
  end
end
