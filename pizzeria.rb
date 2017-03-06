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
  puts "2 - Quattro Stagioni - #{@pizza_quattro_stagioni} Euro"
  puts "3 - Hawaii - #{@pizza_hawaii} Euro"
  puts "4 - Calzone - #{@pizza_calzone} Euro"
end

#Take the order
def take_order
  print "Enter the number of the pizza as displayed on the menu: "
  number = gets.chomp
  print "How many pizzas would you like to order?"
  count = gets.chomp.to_i
  return number, count
end

#Calculate total amount
def total_amount(menu_nr, pizza_cnt)
  price = 0
  price = @pizza_salami if menu_nr == '1'
  price = @pizza_quattro_stagioni if menu_nr == '2'
  price = @pizza_hawaii if menu_nr == '3'
  price = @pizza_calzone if menu_nr == '4'

  amount = price * pizza_cnt

  if amount > 20 then
    # Discount of 10% if over 20 Euro
    amount *= 0.9
  end
  if amount < 10 && amount > 0 then
    # Add delivery costs
    amount += 2.5
  end

  return amount
end

# Call the method to initialize the pizzas
initialize_pizzas
puts "Welcome to Mario's Pizzeria!"
# The method customer_name returns a name, store it in the `name` variable
name = customer_name
puts "Hi #{name.capitalize}, which pizza would you like to order?"
show_menu
# The take_order method returns both the menu number and the amount of pizzas
menu_number, pizza_count = take_order

# Calculate the total amount based on the menu number and the amount of pizzas
total = total_amount menu_number, pizza_count
if total > 0 then
  puts "Thank you for your order. The total amount for your order is: #{total} Euro"
  puts "Your order will be delivered in 20 minutes."
else
  puts "Oops, something went wrong. Please try again."
end
