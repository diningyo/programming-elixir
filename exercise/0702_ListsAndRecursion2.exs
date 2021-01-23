# 7.5 p.077 - exercise ListsAndRecursion-2
defmodule MyList do
  # _max/2 name must be "_max" NOT "max".
  # If defined "max/2", it would be conflicted by "Kernel.max/2".
  defp _max([], max) do
    max
  end
  defp _max([head |tail], max_val) when head <= max_val do
    max(tail, max_val)
  end
  defp _max([head |tail], max_val) when head > max_val do
    max(tail, head)
  end
  def max(list) do
    max(list, -9999)
  end
end

# below puts will display "14"
IO.puts MyList.max [1, 2, 3]
