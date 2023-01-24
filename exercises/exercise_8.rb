require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 8'
puts '----------'

@store1.employees.create(first_name: 'Tom', last_name: 'Seed', hourly_rate: 90)

@new_user = Employee.find_by(first_name: 'Tom')

puts @new_user.password
