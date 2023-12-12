#!/usr/bin/env ruby

cubes = {
	"red"   => 12,
	"green" => 13,
	"blue"  => 14,
}

def valid_game?(game, cubes)
	cube_count = {
		"red"   => 0,
		"green" => 0,
		"blue"  => 0,
	}
	puts game
	# game.each do |set|
	# 	set.scan(/(\d+) (\w+)/).each do |count, color|
	# 		cube_count[color] += count.to_i
	# 	end
	# end
	# cube_count == cubes
end

games = File.readlines('test_games.txt').map(&:chomp)
## Gets game number in arrary
games_arrary = games.to_s.scan(/Game (.)/)

#each game as set
games.each do |game|
  game.scan(/: (.*.)/).to_s.split(/; /).each do |set|
    p set.scan(/ (.*.)/)
  end
end

