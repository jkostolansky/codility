def solution(a)
  left_max_sum_endings = Array.new(a.size, 0)
  1.upto(a.size - 2) do |i|
    left_max_sum_endings[i] = [0, left_max_sum_endings[i - 1] + a[i]].max
  end

  right_max_sum_endings = Array.new(a.size, 0)
  (a.size - 2).downto(1) do |i|
    right_max_sum_endings[i] = [0, right_max_sum_endings[i + 1] + a[i]].max
  end

  max = 0
  1.upto(a.size - 2) do |i|
    max_candidate = left_max_sum_endings[i - 1] + right_max_sum_endings[i + 1]
    max = max_candidate if max < max_candidate
  end

  max
end
