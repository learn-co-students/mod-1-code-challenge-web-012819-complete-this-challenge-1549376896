require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Eric", "Hardiman")
cust2 = Customer.new("Random", "Dude")
cust3 = Customer.new("Dude", "Idek")
cust4 = Customer.new("Sure", "Okay")
cust5 = Customer.new("Bleh", "Blah")

rest1 = Restaurant.new("RestName")
rest2 = Restaurant.new("NameRest")
rest3 = Restaurant.new("Another")
rest4 = Restaurant.new("One More")
rest5 = Restaurant.new("Maybe Another")

rev1 = Review.new(cust1, rest1, rand(1..5), "Test1")
rev2 = Review.new(cust2, rest2, rand(1..5), "Test2")
rev3 = Review.new(cust3, rest3, rand(1..5), "Test3")
rev4 = Review.new(cust4, rest4, rand(1..5), "Test4")
rev5 = Review.new(cust5, rest5, rand(1..5), "Test5")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
