def assign_work(message)
  print message
  gets.chomp
end

inputname = assign_work("What is your name? ")
inputrole = assign_work("What is your role? ")
inputhours = assign_work("How many hours today? ")

puts "Hi #{inputname},"
puts "You will be working as #{inputrole} for #{inputhours} hours."
