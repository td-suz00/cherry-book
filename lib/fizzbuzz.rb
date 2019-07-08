def fizz_buzz(n)
  case 0
  when n%15
    "fizzbuzz"
  when n%3
    "fizz"
  when n%5
    "buzz"
  else
    n.to_s
  end
end