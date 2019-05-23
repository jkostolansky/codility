def solution(n, a)
  counters = Array.new(n, 0)
  last_max = 0
  current_max = 0

  a.each do |i|
    if 1 <= i && i <= n
      counter = counters[i-1]
      counter = last_max if last_max > counter
      counter += 1
      counters[i-1] = counter
      current_max = counter if current_max < counter
    elsif i == n + 1
      last_max = current_max
    end
  end

  counters.map do |counter|
    last_max > counter ? last_max : counter
  end
end
