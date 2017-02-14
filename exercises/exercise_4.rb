require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:

# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.


class Store < ActiveRecord::Base
	Store.create!(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
	Store.create!(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
	Store.create!(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
end

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |t|
	puts "name: #{t.name}, annual_revenue: #{t.annual_revenue}"
end