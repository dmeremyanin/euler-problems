def exchangable?(sum, coins, combination, index = 0, options = [])
  if sum.zero?
    options == combination
  else
    loop do
      coin = coins[index]
      break if coin.nil? || coin > sum

      if exchangable?(sum - coin, coins, combination, index, options + [coin])
        break true
      end

      index = index + 1
    end
  end
end

p exchangable?(200, [1, 2, 5, 10, 20, 50, 100, 200], [1, 1, 1, 2, 5, 20, 20, 50, 100])
