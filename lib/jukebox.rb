# Add your code here

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


def welcome
  puts "Please enter a command:"
end

def get_user_input
  input = gets.strip
  input
end

def exit_jukebox
  puts "Goodbye"
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) do |song, i|
    puts "#{i}. #{song}"
  end
end

def play_checker(songs, user_input)
  found_song = ""
  songs.each do |song|
    if song.include? user_input
      found_song = song
    end
  end
  found_song
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = get_user_input
  play_checker_result = play_checker(songs, user_input)
  if user_input.to_i.to_s == user_input && user_input.to_i <= songs.length - 1
    num = user_input.to_i - 1
    puts "Playing #{songs[num]}"
    run(songs)
  elsif play_checker_result != ""
    puts "Playing #{play_checker_result}"
    run(songs)
  else
    puts "Not found"
    run(songs)
  end
end

def parse_user_input(user_input, songs)
  if user_input == "help"
    help
  elsif user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  elsif user_input == "exit"
    exit_jukebox
  end
end

def run(songs)
  welcome
  user_input = get_user_input
  parse_user_input(user_input, songs)
end


