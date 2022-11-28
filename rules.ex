defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    # Please implement the eat_ghost?/2 function
    if power_pellet_active == true and touching_ghost == true do
      return = true
    else return = false
    end
  end
  def score?(touching_power_pellet, touching_dot) do
    # Please implement the score?/2 function
    if touching_power_pellet == true or touching_dot == true do
      return = true
    else return = false
    end
  end
  def lose?(power_pellet_active, touching_ghost) do
    # Please implement the lose?/2 function
    if power_pellet_active == false and touching_ghost == true do
      return = true
    else return = false
    end
  end
  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    # Please implement the win?/3 function
    if has_eaten_all_dots == true and lose?(power_pellet_active, touching_ghost) == false do
      return = true
    else return = false
    end
  end
end
