def solution(a)
  counter = 1

  left, right = 0, a.size - 1
  current = [a[left].abs, a[right].abs].max

  while left <= right
    if current == a[left].abs
      left += 1
    elsif current == a[right].abs
      right -= 1
    else
      counter += 1
      if a[left].abs < a[right].abs
        current = a[right].abs
        right -= 1
      else
        current = a[left].abs
        left += 1
      end
    end
  end

  counter
end
