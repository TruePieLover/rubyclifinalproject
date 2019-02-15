require './lib/game.rb'
require './lib/scrapper.rb'


class Cli 


	def play
		Game.create_from_collection
		intro_message
		play_game 
	end

	def intro_message
		puts "Welcome to my GameSpot ruby scrapper app!"
		puts "You can type the following commands with the app: "
		puts "'Show Games' will show you all the top games of 2018 according to GameSpot for PC"
		puts "Type the rank of the game to get information such as the reviews and release date for the specefied game"
	end

	def play_game 
		playing = true
		while playing do
			puts "Enter your command: "
			input = gets.chomp
			rank = input.to_i
			if(rank > 0 && rank <= Game.all.length) 
				display_game_details(rank)
			elsif(input == "Show Games")				
				display_all_titles
			elsif(input == "End")
				playing = false
			else()
				puts "invalid command, try again:"
				input = gets.chomp
			end
		end
	end 

	def display_all_titles
		Game.all.each do |game|
			puts  "Rank: #{game.rank} Title: #{game.title}"
		end
	end


	# Get all game details given rank
	def display_game_details(rank) 
		game = Game.get_game_by_rank(rank)
		puts "For the game..."
		puts game.title
		puts "The following game gamespot rank is "
		puts  game.rank
		puts "The following games release date is: "
		puts game.release_date
		puts "The following games user average rating is : "
		puts game.review
	end

end

obj = Cli.new
obj.play

