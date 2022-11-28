defmodule HighSchoolSweetheart do
  def first_letter(name) do
    formatted_name =
    name
    |> String.trim()
    |> String.first()
  end
  def initial(name) do
    formatted_name =
    name
    |> first_letter()
    |> String.upcase()
    |> String.pad_trailing(2, ".")
  end
  def initials(full_name) do
    name = String.split(full_name)
    formatted_name = initial(List.first(name)) <> " " <> initial(List.last(name))
  end
  def pair(full_name1, full_name2) do
    heart =
"""
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     X. X.  +  .X .X     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"""
    temp = String.replace(heart, "X. X.", initials(full_name1))
    final = String.replace(temp, ".X .X", initials(full_name2))
  end
end
