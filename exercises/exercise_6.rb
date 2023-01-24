require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
@store1.employees.create(first_name: 'Jhon', last_name: 'Useche', hourly_rate: 90)
@store1.employees.create(first_name: 'Mike', last_name: 'Lone', hourly_rate: 75)
@store1.employees.create(first_name: 'Nick', last_name: 'Useche', hourly_rate: 60)
@store2.employees.create(first_name: 'Isabel', last_name: 'Smith', hourly_rate: 65)
@store2.employees.create(first_name: 'Homer', last_name: 'Simpsons', hourly_rate: 80)
@store2.employees.create(first_name: 'Terry', last_name: 'Smith', hourly_rate: 70)
