def ask(message)
  print message
  gets.chomp
end

puts "Select a song to play next!"

song_title = ask("Title: ")
song_artist = ask("Artist: ")
song_released = ask("Year released: ")

puts "You selected the song \"#{song_title}\" by #{song_artist}, released in #{song_released}."
