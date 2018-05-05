defmodule ElixirExamples.Pattern.Recursion do
  def count(list), do: count(list, 0)

  def count([], acc), do: acc
  def count([_head | tail], acc), do: count(tail, acc + 1)

  def count_list do
    count([1, 2, 3, 4])
  end
end