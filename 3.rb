NUMBER = (ARGV[0] || 600_851_475_143).to_i

require 'prime'
puts Prime.prime_division(NUMBER).last.first
