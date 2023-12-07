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

lines.each do |line|
  # Replace words with numeric equivalents
  num_line = line.gsub(/#{words.keys.join('|')}+/) { |match| words[match] || match }

  # Extract numeric values
  nums = num_line.scan(/\d+/)

  # Calculate and accumulate the sum
  sum += nums.map(&:to_i).sum

  # Optionally, print individual numeric values for each line
  nums.each { |num| puts num.to_i }
end

# Print the total sum
puts "Total Sum: #{sum}"

