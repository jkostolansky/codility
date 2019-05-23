def solution(a)
  n = a.size + 1
  expected_sum = (n * (n + 1)) / 2
  sum = a.inject(0, :+)
  expected_sum - sum
end
