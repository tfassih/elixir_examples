defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when input >= 1 and is_integer(input) do
    if input <= 1, do: 0, else: counter(input, 0)
  end
  defp counter(input, c) do
    cond do
      input <= 1 -> c
      rem(round(input), 2) == 0 -> counter(input / 2, c + 1)
      rem(round(input), 2) != 0 -> counter((input * 3) + 1, c + 1)
    end
  end
end
