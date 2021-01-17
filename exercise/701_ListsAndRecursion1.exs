# 7.5 p.077 - exercise ListsAndRecursion-1
defmodule MyList do
  defp mapsum([], value, _func) do
    value
  end
  defp mapsum([head |tail], value, func) do
    mapsum(tail, value + func.(head), func)
  end
  def mapsum([head |tail], func) do
    mapsum(tail, func.(head), func)
  end
end

# below puts will display "14"
IO.puts MyList.mapsum [1, 2, 3], &(&1 * &1)
