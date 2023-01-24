require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...
puts 'Enter the name of the new store to add'
store_name = gets.chomp

new_store = Store.new(name: store_name, annual_revenue: -10, mens_apparel: false, womens_apparel: false)
new_store.valid?
errors = new_store.errors.messages

errors.each do |key, error|
  puts "#{key}: #{error}"
end
