def valid_solution?(k, a, max_block_sum)
  blocks_needed = 1
  sum = 0

  0.upto(a.size - 1) do |i|
    if sum + a[i] > max_block_sum
      blocks_needed += 1
      sum = a[i]
    else
      sum += a[i]
    end
  end

  blocks_needed <= k
end

def solution(k, m, a)
  minimum = a.max
  maximum = a.inject(0, :+)

  result = maximum

  while minimum <= maximum do
    sum_guess = (minimum + maximum) / 2
    if valid_solution?(k, a, sum_guess)
      result = sum_guess
      maximum = sum_guess - 1
    else
      minimum = sum_guess + 1
    end
  end

  result
end
