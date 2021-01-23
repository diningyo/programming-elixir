# 7.6 p.081 - exercise ListsAndRecursion-4
defmodule MyList do
  def span(from, to) do
    span([to], from, to - 1)
  end

  def span(list, from, to) when from != to do
    span([to | list], from, to - 1)
  end

  def span(list, from, to) when from == to do
    list
  end
end
