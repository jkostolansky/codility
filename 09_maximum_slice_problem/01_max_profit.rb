def solution(a)
  return 0 if a.size <= 1

  max_profit = 0
  max_profit_ending = 0
  min_price = a[0]

  a.each do |price|
    min_price = price if min_price > price
    max_profit_ending = [0, price - min_price].max
    max_profit = max_profit_ending if max_profit < max_profit_ending
  end

  max_profit
end
