# 5.2 p.045 - exercise Functions-2
fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

IO.puts fizzbuzz.(0, 0, 0)
IO.puts fizzbuzz.(0, 1, 0)
IO.puts fizzbuzz.(1, 0, 0)
IO.puts fizzbuzz.(1, 1, 0)
