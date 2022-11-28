defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    daily_rate = hourly_rate * 8.0
  end
  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    if discount > 0.0 do
    return = (before_discount - (before_discount * (discount * 0.01)))
    else if discount == 0 do
      return = before_discount
      end
    end
  end
  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    daily = daily_rate(hourly_rate)
    monthly = daily * 22.0
    if discount == 0 do
      return = ceil(monthly)
    else return = ceil(apply_discount(monthly, discount))
    end
  end
  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    return = Float.floor((budget / apply_discount(daily_rate(hourly_rate), discount)), 1)
  end
end
