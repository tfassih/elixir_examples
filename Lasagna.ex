defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven() do
    time = 40
  end
  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(time) do
    time_left = expected_minutes_in_oven() - time
  end
  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(layers) do
    time_spent = layers * 2
  end
  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, time) do
    time_spent = time + preparation_time_in_minutes(layers)
  end
  # Please define the 'alarm/0' function
  def alarm() do
    IO.inspect("Ding!")
  end
end
