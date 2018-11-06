require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.name = " The Matt Damon store"
puts " This is my changed name #{@store1.name}"