# 6.3 p.057 - exercise ModulesAndFunctions-4
defmodule Calc do
  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)
end
