# calc.rb

numbers = []

puts 'Enter a number.'
number = gets.chomp
puts ''
numbers << number
puts 'Enter another number.'
number = gets.chomp
puts ''
numbers << number
while number != ''
  puts 'Enter another number -OR- Press enter (return) for your answer.'
  number = gets.chomp
  puts ''
  numbers << number
end

numbers.pop # remove the return from array

puts 'Please choose a mathematical operation from the list below.'
puts ''
puts 'Enter (1) for addition'
puts 'Enter (2) for subtraction'
puts 'Enter (3) for multiplication'
puts 'Enter (4) for division'
puts ''

operation = gets.chomp

puts ''

if operation  == '1'
  answer = numbers.inject { |a, e| a.to_i + e.to_i }
  puts "The answer is #{ answer }."
elsif operation == '2'
  answer = numbers.inject { |a, e| a.to_i - e.to_i }
  puts "The answer is #{ answer }."
elsif operation == '3'
  answer = numbers.inject(1) { |a, e| a.to_i * e.to_i }
  puts "The answer is #{ answer }."
elsif operation == '4'
  answer = numbers.inject { |a, e| a.to_f / e.to_f }
  puts "The answer is #{ answer }."
else
  puts 'You did not choose an operation from the list.'
end
