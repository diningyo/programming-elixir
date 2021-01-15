# 6.3 p.055 - exercise ModulesAndFunctions-1 to 3
defmodule Times do
  def double(n) do
    n * 2
  end

  # ModulesAndFunction-1
  def triple(n) do
    n * 3
  end

  # ModulesAndFunction-3
  def quadruple(n) do
    double(double(n))
  end
end
