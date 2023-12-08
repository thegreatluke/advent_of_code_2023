#!/usr/bin/env ruby

cubes = {
	"red"   => "12",
	"green" => "13",
	"blue"  => "14",
}

games = File.readlines('test_games.txt')
games.each do |game|
	game_id = game.match(/\d/)
	game_set = game.gsub(/Game \d:/, "")
	game_sets = game_set.split(/;/)

	#puts game_id
	puts "Game: #{game_id}"
	#puts game_set
	#puts game_sets
	game_sets.each do |set|
		pull = set.split(/,/).to_s
		puts pull
		num = pull.gsub(/\D+/, " ")
		puts num
		color = pull.match(/\d /)
  end
end
