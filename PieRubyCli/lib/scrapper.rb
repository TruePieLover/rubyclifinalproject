require 'open-uri';
require 'nokogiri';
require 'pry'

class Scrapper
	PAGE_URL = 'https://www.gamespot.com/pc/games/?page=1'

	def self.scrape_game_page()
		main_game_hash = []
		rank_counter = 0
	    url_page = Nokogiri::HTML(open(PAGE_URL))
	    all_games = url_page.css('.media-game')

		game_array = []
		url_page = Nokogiri::HTML(open(PAGE_URL))
	    games = url_page.css('h3.media-title')
	    games.each do |game|
	    	game_array << game.text
	    end
	    game_array 

		rank_array = []
		url_page = Nokogiri::HTML(open(PAGE_URL))
	    ranks = url_page.css('time.media-date')
	    games = url_page.css('h3.media-title')
	    ranks.each do |rank|
	    	rank_array << rank.text
	    end
	    rank_array

		score_array = []
		url_page = Nokogiri::HTML(open(PAGE_URL))
	    scores = url_page.css('.media-well--review-user')
	    scores.each do |rating|
	    	score_array << rating.text
	    end
	    score_array
	        all_games.each do |game| 
	    	game_title = game.css('h3.media-title')
	    	game_release = game.css('time.media-date')
	    	game_review = game.css('.media-well--review-user')	    	
	    	main_game_hash << {title: game_title.text, release_date: game_release.text.chomp('released'), rank: rank_counter+=1, review: game_review.text}
	    end
	 main_game_hash
	 
	end
end