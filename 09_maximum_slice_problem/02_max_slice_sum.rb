def solution(a)
  max_sum = a[0]
  max_sum_ending = a[0]

  1.upto(a.size - 1) do |i|
    max_sum_ending = [a[i], max_sum_ending + a[i]].max
    max_sum = max_sum_ending if max_sum < max_sum_ending
  end

  max_sum
end
