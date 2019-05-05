require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help()
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each do |song|
    puts song 
  end 
end 

def play(songs)
  Pry.config.input = STDIN 
  Pry.config.output = STDOUT 
  puts "Please enter a song name or number:"
  input = gets.chomp
  idx = 0
  idx = input.to_i - 1

  if is_valid(input, songs) == false 
    puts "Invalid input, please try again"
  else 
    puts "Playing #{is_valid(input, songs)}"
  end 
end 

def is_valid(input, songs)
  idx = 0 
  idx = input.to_i - 1 
  if songs.include?(input) == true 
    return input 
  elsif 
    #input.length < songs.size.digits.count temp-fix of idx[-1] result returning rather than "Invalid input" for string
      (songs.include?(songs[idx]) == true && input.length < 2)
    return songs[idx] 
  else 
    return false 
  end  
end   

def exit_jukebox()
  puts "Goodbye"
end 

def run(songs)
  help()

  until(u_input == "exit")
  puts "Please enter a command:"
  u_input = ""
  u_input = gets.chomp
  
  case u_input 
  
  when "list"
    list(songs)
  
  when "play"
    play(sings)
    
  else "help"
    help()
    
  end
end 

exit_jukebox
end 
