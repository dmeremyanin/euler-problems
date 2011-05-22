NUMBER = (ARGV[0] || 10_001).to_i

require 'prime'
q = 0
Prime.each do |i|
  q += 1
  if q == NUMBER
    puts i
    break
  end
end
