#Initialize pizzas
def initialize_pizzas
  @pizza_salami = 8.0
  @pizza_quattro_stagioni = 10.5
  @pizza_hawaii = 9.5
  @pizza_calzone = 12.0
end

#Customer name
def customer_name
  print "What's your name? "
  return gets.chomp
end

#Display the menu
def show_menu
  puts "1 - Salami - #{@pizza_salami} Euro"
  puts "1 - Quattro Stagioni - #{@pizza_quattro_stagioni} Euro"
  puts "1 - Hawaii - #{@pizza_hawaii} Euro"
  puts "1 - Calzone - #{@pizza_calzone} Euro"
end

#Take the order
def take_order
  puts "Enter the number of the pizza as displayed on the menu: "
  number = gets.chomp
  print = "How many pizzas would you like to order?"
