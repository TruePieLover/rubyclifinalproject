require './lib/scrapper.rb'

class Game

	attr_accessor :title
	attr_accessor :rank
	attr_accessor :release_date
	attr_accessor :review
	@@all = []

def initialize(gamehash)
     gamehash.each do |key, value| 
       self.send(("#{key}="), value)
     end
     @@all << self
  end

# Takes in colleciton
def self.create_from_collection()
	new_array = Scrapper.scrape_game_page()
	new_array.collect do |hash|
		Game.new(hash)
	end
end

# Gets game titles
 def self.titles
 	new_title_array = Game.all.map do |game|  
 		game.title
 	end
 	new_title_array
 end


# Gets game reviews
def self.reviews
	new_review_array = Game.all.map do |game|
		game.review
	end
	new_review_array 
end
# get by rank method
def self.get_game_by_rank(rank)
	_index = (rank.to_i - 1)
	# return based on rank the game
	Game.all[_index]
end

# Get game release dates
def self.releases
	new_release_array = Game.all.map do |game|
		game.release_date
	end
	new_release_array 
end

def self.all
	@@all
end

end


