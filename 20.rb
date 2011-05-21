LIMIT = (ARGV[0] || 100).to_i

puts (1..LIMIT).inject(:*).to_s.chars.inject(0) { |sum, element| sum + element.to_i }
