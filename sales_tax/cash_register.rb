require_relative 'item'
require_relative 'receipt'

@shopping_cart = []

puts "Hello there! Welcome to Tom\'s Superstore. What type of item are you looking for? (Food, Medical, Book, Other)"
type_looking_for = gets.chomp
puts "What is the name of the item? I can go find it for you..."
item_looking_for = gets.chomp
puts "... Fount it! Oh no, our scanning system isn't working! How much was the item?"
cost_looking_for = gets.chomp

@shopping_cart << Item.new(item_looking_for, cost_looking_for, type_looking_for)

def continue_shopping
  puts "Hello again! Welcome back to Tom\'s Superstore. What type of item are you looking for? (Food, Medical, Book, Other)"
  type_looking_for = gets.chomp
  puts "What is the name of the item? I can go find it for you..."
  item_looking_for = gets.chomp
  puts "... Fount it! Oh no, our scanning system isn't working! How much was the item?"
  cost_looking_for = gets.chomp

  @shopping_cart << Item.new(item_looking_for, cost_looking_for.to_i, type_looking_for)
end

loop do
  puts "You have #{@shopping_cart.length} item in your cart."
  puts "Would you like to continue shopping? Y or N"
  answer = gets.chomp.upcase
    if answer == "Y"
      continue_shopping
    elsif answer == "N"
      final_reciept = Reciept.new
      final_reciept.cash_out(@shopping_cart)
      final_reciept.print_reciept(@shopping_cart)
      break
    else
      puts "Sorry, I couldn\'t hear you..."
    end
end
