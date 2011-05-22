LIMIT = (ARGV[0] || 2_000_000).to_i

require 'prime'
puts Prime.each(LIMIT - 1).inject(:+)
