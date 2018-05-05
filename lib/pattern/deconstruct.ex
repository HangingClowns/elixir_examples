defmodule ElixirExamples.Pattern.Deconstruct do
  def deconstruct_list do
    a = [1, 2, 3]
    [b, c, d] = a
    IO.puts("#{b}, #{c}, #{d}")
  end

  def ensure_multiple_values_1 do
    a = [1, 2, 2]
    [b, c, c] = a

    IO.puts("#{b}, #{c}")
  end

  def ensure_multiple_values_2 do
    a = [1, 2, 2]
    [c, c, c] = a

    IO.puts("Won't get here")
  end
end