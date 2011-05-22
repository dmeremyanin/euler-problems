POWER = (ARGV[0] || 1000).to_i

puts (2**POWER).to_s.chars.inject(0) { |sum, element| sum + element.to_i }
