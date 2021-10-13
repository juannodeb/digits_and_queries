def sum_digits(number)
  length = number.to_s.length

  while length >= 1
    number = number.digits.reverse.sum
    length -= 1
  end

  number
end

puts "Hey! Type a number and I'll sum the digits of it until I get a 1 digit number..."

number = gets.chomp.to_i

sum_digits(number)

puts "Here you go, you entered \e[32m#{number}\e[0m and the result is: \e[32m#{sum_digits(number)}\e[0m"
