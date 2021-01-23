# 7.5 p.078 - exercise ListsAndRecursion-3
defmodule MyList do
  def ceasar(list, n), do: ceasar(list, n, [])
  defp ceasar([], n, value), do: value
  defp ceasar([head | tail], n, value) when (head + n) > ?z do
    ceasar(tail, n, value ++ [head + n - (?z - ?a) - 1])
  end
  defp ceasar([head | tail], n, value) when (head + n) <= ?z do
    ceasar(tail, n, value ++ [head + n])
  end
end
