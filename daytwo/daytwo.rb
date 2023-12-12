#!/usr/bin/env ruby

class Game
  attr_reader :id, :rounds

  def self.parse(line)
    first, *last = line.chomp.split(/[:;]/)
    id = first.split.last.to_i
    rounds = last.map do |str_round|
      str_round.split(',').map do |str_card|
        count, color = str_card.split
        [color.to_sym, count.to_i]
      end.to_h
    end
    new(id, rounds)
  end

  def initialize(id, rounds)
    @id = id
    @rounds = rounds
  end

  def possible?
    rounds.each do |round|
      round.each do |color, count|
        if color == :red && count > 12
          return false
        elsif color == :blue && count > 14
          return false
        elsif color == :green && count > 13
          return false
        end
      end
    end
    true
  end
end


data = File.readlines('games.txt')
r = data.map do |line|
  g = Game.parse(line)
  if g.possible?
    g.id
  else
    0
  end
end
p r.sum
