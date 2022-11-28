defmodule LibraryFees do
  def datetime_from_string(string) do
    new_date = NaiveDateTime.from_iso8601(string)
    elem(new_date, 1)
  end
  def before_noon?(datetime) do
    datetime.hour < 12
  end
  def return_date(checkout_datetime) do
    if before_noon?(checkout_datetime), do: Date.add(checkout_datetime, 28), else: Date.add(checkout_datetime, 29)
  end
  def days_late(planned_return_date, actual_return_datetime) do
    if Date.compare(planned_return_date, actual_return_datetime) == :lt do
      Kernel.abs(Date.diff(planned_return_date, actual_return_datetime))
    else
      0
    end
  end
  def monday?(datetime) do
    Date.day_of_week(datetime) == 1
  end
  def calculate_late_fee(checkout, return, rate) do
    prd = datetime_from_string(checkout)
          |> return_date()
    ret = datetime_from_string(return)
    cond do
    monday?(ret) and days_late(prd, ret) > 0 -> Kernel.floor((rate/2) * days_late(prd, ret))
    days_late(prd, ret) > 0 -> rate * days_late(prd, ret)
    true -> 0
    end
  end
end
