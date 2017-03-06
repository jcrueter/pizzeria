#Can I drink beer?
print "So you want to have a beer."
puts "What's your age?"
age = gets.chomp.to_i
if age < 18
  puts "Forget it!"
else
  if age == 18
    puts "Are you sure? y/n"
    sure = gets.chomp
    if sure == "y" || "Y"
      puts "Liar."
      return
    end
  end
  puts "Cheers!"
end
