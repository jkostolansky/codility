def valid_solution?(a, b, c, guess, max_position)
  prefix_sums = Array.new(max_position + 1, 0)
  0.upto(guess - 1) { |i| prefix_sums[c[i]] += 1 }
  1.upto(prefix_sums.size - 1) { |i| prefix_sums[i] += prefix_sums[i - 1] }

  0.upto(a.size - 1) do |i|
    if prefix_sums[b[i]] - prefix_sums[a[i] - 1] == 0
      return false
    end
  end

  true
end

def solution(a, b, c)
  result = -1

  lower, upper = 0, c.size
  max_position = 2 * c.size
  while lower <= upper do
    guess = (lower + upper) / 2
    if valid_solution?(a, b, c, guess, max_position)
      result = guess
      upper = guess - 1
    else
      lower = guess + 1
    end
  end

  result
end
