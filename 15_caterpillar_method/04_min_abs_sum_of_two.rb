def solution(a)
  sorted = a.sort

  left, right = 0, sorted.size - 1
  minimum = (a[left] + a[right]).abs

  while left <= right do
    current_sum = sorted[left] + sorted[right]

    candidate = current_sum.abs
    minimum = candidate if minimum > candidate

    if current_sum < 0
      left += 1
    else
      right -= 1
    end
  end

  minimum
end
