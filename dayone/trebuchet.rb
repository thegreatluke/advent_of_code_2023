#!/usr/bin/env ruby

words = {
  "one"   => 1,
  "two"   => 2,
  "three" => 3,
  "four"  => 4,
  "five"  => 5,
  "six"   => 6,
  "seven" => 7,
  "eight" => 8,
  "nine"  => 9,
}

lines = File.readlines("cords.txt")
sum = 0

# puts get_num("two")

lines.each do |line| 
  text  = line.to_s
  #nums  = text.gsub(/words[text]/, "")
  #puts nums
  #nums  = text.gsub(, get_num(text))
  num   = text.gsub(/#{words.keys.join('|')}+/) { |match| words[match] || match }
  #puts num
  nums  = num.gsub(/\D+/) { |match| }
  #puts nums
  cords = nums.split(//)
  sum   = "#{cords.first}#{cords.last}".to_i + sum
  puts "#{cords.first}#{cords.last}".to_i
end
puts sum
