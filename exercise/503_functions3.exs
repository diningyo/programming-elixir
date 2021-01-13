# 5.2 p.045 - exercise Functions-3
sub_fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizzbuzz = fn
  n -> sub_fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

# Gets "Buzz 11 Fizz 13 14 FizzBuzz 16"
IO.puts fizzbuzz.(10)
IO.puts fizzbuzz.(11)
IO.puts fizzbuzz.(12)
IO.puts fizzbuzz.(13)
IO.puts fizzbuzz.(14)
IO.puts fizzbuzz.(15)
IO.puts fizzbuzz.(16)
