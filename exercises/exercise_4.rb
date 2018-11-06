require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

Store.create!({:name => 'Surrey', :annual_revenue => 224000, :mens_apparel => false, :womens_apparel => true})
Store.create!({:name => 'Whistler', :annual_revenue => 190000, :mens_apparel => true, :womens_apparel => false})
Store.create!({:name => 'YaleTown', :annual_revenue => 430000, :mens_apparel => true, :womens_apparel => true})


@mens_stores = Store.where({:mens_apparel => true})
puts " these are my filtered stores: #{@mens_stores.inspect}"

@mens_stores.each do |store|
  puts "these are the stores money : #{store.annual_revenue}"
  puts " these are thier  name: #{store.name}"
end 

@womens_stores = Store.where(:womens_apparel => true).where(:annual_revenue => [1..999999])
puts " these are my women, #{@womens_stores.inspect}"