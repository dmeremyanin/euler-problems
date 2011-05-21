FROM  = (ARGV[0] || 3).to_i
TO    = (ARGV[1] || 1000).to_i

puts (FROM...TO).inject { |sum, i| i % 3 == 0 || i % 5 == 0 ? sum + i : sum }
