# 10.1 p.102 - exercise ListsAndRecursion-5
# Implement Enum.all?, each, filter, split, take
defmodule MyEnum do
  def all?([head | tail], func) do
    all?(tail, func, func.(head))
  end

  defp all?([head | tail], func, ret) do
    all?(tail, func, ret && func.(head))
  end

  defp all?([], _func, ret), do: ret

  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def each([], _func), do: :ok

  def filter(list, func) do
    filter(list, func, [])
  end

  defp filter([head | tail], func, ret) do
    if func.(head) do
      filter(tail, func, ret ++ [head])
    else
      filter(tail, func, ret)
    end
  end

  defp filter([], _func, ret), do: ret

  def split([head | tail], count) do
    split(tail, count - 1, [head])
  end

  defp split([head | tail], count, ret) when count != 1 do
    split(tail, count - 1, ret ++ [head])
  end

  defp split([head | tail], count, ret) when count == 1 do
    split(tail, 1, ret ++ [head], [])
  end

  defp split([head | tail], _count, ret1, ret2) do
    split(tail, 0, ret1, ret2 ++ [head])
  end

  defp split([], _count, ret1, ret2), do: {ret1, ret2}

  def take(_list, n, ret) when n == 0, do: ret

  def take([head | tail], n, ret) when n != 0 do
    take(tail, n - 1, ret ++ [head])
  end

  def take([head | tail], n) do
    take(tail, n - 1, [head])
  end
end

list = Enum.to_list 1..5

IO.inspect list
IO.inspect MyEnum.all?(list, &(&1 < 5))
IO.inspect MyEnum.each(list, &(IO.puts &1))
IO.inspect MyEnum.filter(list, &(rem(&1, 2) == 1))
IO.inspect MyEnum.split(list, 3)
IO.inspect MyEnum.take(list, 3)
