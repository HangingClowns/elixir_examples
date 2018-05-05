defmodule ElixirExamples.Pattern.Equals do
  def not_assigns_1 do
    a = 1
    1 = a
    2 = a
  end
  
  def not_assigns_2 do
    a = 1
    1 = a
    ^a = 2
  end
end