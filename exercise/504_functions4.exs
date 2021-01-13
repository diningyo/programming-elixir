# 5.3 p.047 - exercise Functions-4
prefix = fn prefix -> (fn name -> "#{prefix} #{name}" end) end
mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
