My Pie CLI App

The app works by either typing "Show Games" to get a list of all the top PC games of 2018 as according to gamespot in ranked order.
If you type the rank of the game it will show you the release date and review


Extra download reuqirements:
NOKIGIRI



#My adventures in programming and my first project
For my first project I made a ruby CLI app that does the following
If you type 'Show Games' it will show you a list from gamespots top 25 pc game website list that is scrapped using OPENURI and NOKOIGIRI Gems
If you type the specific game it will show the following information:
Release date (scrapped with nokogiri)
User reviews (scrapped with nokogiri)
Game rank according to gamespot (scrapped with nokogiri)
Two issues I encountered while developing my app:
1. Using and requiring the relative files and bundler caused some confusion for me, so I went basic and made the gem and gemfile from scratch. For further projects I will use bundler, but for time and ease I made this gem from scratch.
2. I had minor issues figuring out how to properly intiailize/access class  variables and accessors, but after discussing it with my programming couch I refactored the code and got it to not only work correctly, be simpler to use, but make more sense in how the code worked.

The program goes through the following files to execute:
scrapper.rb: The base scrapper file creates a hash of all the info using ruby gems and methods to scrap gamespots website
game.rb: Game class that creates class objects for our game containing game info data
cli.rb: Main cli file for our game, also main file to play our game, calls upon our game class to create and read data from the game objects based on user input for the game

In addition to working on the project I have also continued working on the new work for flat iron which now includes learning SQL.
I am much more new to SQL then other programming languages, so it is a new challenge I look forward to encounter and write about.