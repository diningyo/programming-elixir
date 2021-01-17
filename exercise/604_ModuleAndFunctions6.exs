# 6.5 p.062 - exercise ModulesAndFunctions-6
defmodule Chop do
  def sub_guess(actual, tmp, _range) when actual == tmp do
    IO.puts tmp
  end

  def sub_guess(actual, tmp, range) when actual < tmp do
    min.._max = range
    guess(actual, min..tmp-1)
  end

  def sub_guess(actual, tmp, range) when actual > tmp do
    _min..max = range
    guess(actual, tmp+1..max)
  end

  def guess(actual, range) do
    min..max = range
    tmp = div(min + max, 2)
    IO.puts "Is it #{tmp}"
    sub_guess(actual, tmp, range)
  end
end

Chop.guess(273, 1..1000)
