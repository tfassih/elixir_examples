defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end
  def to_milliliter(volume_pair) do
    cond do
      volume_pair == {:milliliter, get_volume(volume_pair)} ->
        volume_pair
      volume_pair == {:cup, get_volume(volume_pair)} ->
        {:milliliter, elem(volume_pair, 1) * 240.0}
      volume_pair == {:fluid_ounce, get_volume(volume_pair)} ->
        {:milliliter, elem(volume_pair, 1) * 30.0}
      volume_pair == {:teaspoon, get_volume(volume_pair)} ->
        {:milliliter, elem(volume_pair, 1) * 5.0}
      volume_pair == {:tablespoon, get_volume(volume_pair)} ->
        {:milliliter, elem(volume_pair, 1) * 15.0}
    end
  end
  def from_milliliter(volume_pair, unit) do
    cond do
      unit == :cup -> {:cup, elem(volume_pair, 1) / 240.0}
      unit == :fluid_ounce -> {:fluid_ounce, elem(volume_pair, 1) / 30.0}
      unit == :teaspoon -> {:teaspoon, elem(volume_pair, 1) / 5.0}
      unit == :tablespoon -> {:tablespoon, get_volume(volume_pair) / 15.0}
      unit == :milliliter -> {:milliliter, get_volume(volume_pair)}
    end
  end
  def convert(volume_pair, unit) do
    cond do
        elem(volume_pair, 0) == :cup ->
          cond do
            unit == :fluid_ounce -> {unit, 8.0 * get_volume(volume_pair)}
            unit == :teaspoon -> {unit, 28.0 * get_volume(volume_pair)}
            unit == :tablespoon -> {unit, 16.0 * get_volume(volume_pair)}
            unit == :cup -> {:cup, get_volume(volume_pair)}
          end
        elem(volume_pair, 0) == :fluid_ounce ->
          cond do
            unit == :cup -> {unit, get_volume(volume_pair) / 8.0}
            unit == :teaspoon -> {unit, 6.0 * get_volume(volume_pair)}
            unit == :tablespoon -> {unit, 2.0 * get_volume(volume_pair)}
            unit == :fluid_ounce -> volume_pair
          end
        elem(volume_pair, 0) == :teaspoon ->
          cond do
            unit == :fluid_ounce -> {unit, get_volume(volume_pair) / 8.0}
            unit == :cup -> {unit, get_volume(volume_pair) / 28.0}
            unit == :tablespoon -> {unit, get_volume(volume_pair) / 3.0}
            unit == :teaspoon -> {unit, elem(volume_pair, 1)}
          end
        elem(volume_pair, 0) == :tablespoon ->
          cond do
          unit == :fluid_ounce -> {unit, (get_volume(volume_pair) / 2.0)}
          unit == :cup -> {unit, get_volume(volume_pair) / 16.0}
          unit == :teaspoon -> {unit, get_volume(volume_pair) * 3.0}
          unit == :tablespoon -> {unit, get_volume(volume_pair)}
        end
        elem(volume_pair, 0) == :milliliters -> from_milliliter(volume_pair, unit)
        elem(volume_pair, 0) != :milliliter and unit == :milliliter -> return = to_milliliter(volume_pair)
    end
  end
end
