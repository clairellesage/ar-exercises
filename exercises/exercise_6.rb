require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
	has_many :employees
end

class Employee < ActiveRecord::Base
	belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Claire", last_name: "Virani", hourly_rate: 20)
@store1.employees.create(first_name: "Alex", last_name: "Virani", hourly_rate: 90)
@store2.employees.create(first_name: "Kapish", last_name: "Virani", hourly_rate: 90)
@store2.employees.create(first_name: "Adrien", last_name: "Virani", hourly_rate: 20)
@store2.employees.create(first_name: "Young", last_name: "Virani", hourly_rate: 30)

puts @store1.employees.count
puts @store2.employees.count
