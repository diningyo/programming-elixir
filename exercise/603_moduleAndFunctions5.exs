# 6.3 p.057 - exercise ModulesAndFunctions-5
defmodule Gcd do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
