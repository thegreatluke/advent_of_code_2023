#!/usr/bin/env ruby

words = {
  "eightwo" => "82",
  "twone"   => "21",
  "oneight" => "18",
  "one"     => "1",
  "two"     => "2",
  "three"   => "3",
  "four"    => "4",
  "five"    => "5",
  "six"     => "6",
  "seven"   => "7",
  "eight"   => "8",
  "nine"    => "9",
}

#lines = File.readlines("cords.txt")
lines = File.readlines("test_data.txt")
sum = 0

lines.each do |line|
  text  = line.to_s
  num   = text.gsub(/#{words.keys.join('|')}+/) { |match| words[match] || match }
  #puts num
  nums  = num.gsub(/\D+/) { |match| }
  puts nums
  cords = nums.split(//)
  sum   = "#{cords.first}#{cords.last}".to_i + sum
  #puts "#{cords.first}#{cords.last}".to_i
end
puts sum
