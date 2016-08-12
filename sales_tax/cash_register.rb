require_relative 'item'
require_relative 'receipt'

@shopping_cart = []

def continue_shopping
  puts "Hello again! Welcome back to Tom\'s Superstore. What type of item are you looking for? (Food, Medical, Books, Other)"
  type_looking_for = gets.chomp
  puts "What is the name of the item? I can go find it for you..."
  item_looking_for = gets.chomp
  puts "... Fount it! Oh no, our scanning system isn't working! How much was the item?"
  cost_looking_for = gets.chomp

  @shopping_cart << Item.new(item_looking_for, cost_looking_for, type_looking_for)
end


puts "Hello there! Welcome to Tom\'s Superstore. What type of item are you looking for? (Food, Medical, Books, Other)"
type_looking_for = gets.chomp
puts "What is the name of the item? I can go find it for you..."
item_looking_for = gets.chomp
puts "... Fount it! Oh no, our scanning system isn't working! How much was the item?"
cost_looking_for = gets.chomp

@shopping_cart << Item.new(item_looking_for, cost_looking_for, type_looking_for)

loop do
  puts "You have #{@shopping_cart.length} item in your cart."
  puts "Would you like to continue shopping? Y or N"
  answer = gets.chomp.upcase
    if answer == "Y"
      continue_shopping
    elsif answer == "N"
      puts "CHA-CHING!"
      puts "Thanks for stopping by! See you again soon."
      break
    else
      puts "Sorry, I couldn\'t hear you..."
    end
end
