# 5.2 p.043 - exercise Functions-1
# - list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
list_concat = fn ([:a, :b], [:c, :d]) -> [:a, :b, :c, :d] end
IO.puts inspect(list_concat.([:a, :b], [:c, :d]))
# - sum.(1, 2, 3) #=> 6
sum = fn a, b, c -> a + b + c end
IO.puts sum.(1, 2, 3)
# - pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]
pair_tuple_to_list = fn { a, b } -> [a, b] end
IO.puts inspect(pair_tuple_to_list.( { 1234, 5678 } ))
