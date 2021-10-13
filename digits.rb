def sum_digits(number)
  length = number.to_s.length

  while length >= 1
    number = number.digits.reverse.sum
    length -= 1
  end

  number
end

## Examples:
puts "16      => #{sum_digits(16)}"
puts "942     => #{sum_digits(942)}"
puts "132189  => #{sum_digits(132189)}"
puts "493193  => #{sum_digits(493193)}"

# 16 ------> 1 + 6                                             = 7
# 942 -----> 9 + 4 + 2 = 15 -> 1 + 5                           = 6
# 132189 --> 1 + 3 + 2 + 1 + 8 + 9 = 24 -> 2 + 4               = 6
# 493193 --> 4 + 9 + 3 + 1 + 9 + 3 = 29 -> 2 + 9 = 11 -> 1 + 1 = 2

## More examples:
# puts "1       => #{sum_digits(1)}"
# puts "9845612 => #{sum_digits(9845612)}"
# puts "200213  => #{sum_digits(200213)}"
# puts "326     => #{sum_digits(326)}"
# puts "199     => #{sum_digits(199)}"

# 1 -------> 1                                                = 1
# 9845612 -> 9 + 8 + 4 + 5 + 6 + 1 + 2 = 35 -> 3 + 5          = 8
# 200213 --> 2 + 0 + 0 + 2 + 1 + 3                            = 8
# 326 -----> 3 + 2 + 6 = 11 -> 1 + 1                          = 2
# 199 -----> 1 + 9 +9 = 19 -> 1 + 9 = 10 -> 1 + 0             = 1
