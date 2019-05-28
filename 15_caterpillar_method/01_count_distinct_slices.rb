def solution(m, a)
  counter = 0
  maximum = 1_000_000_000

  back, front = 0, -1
  seen = Array.new(m + 1, 0)

  while front < a.size && back < a.size do
    if front < a.size - 1 && seen[a[front + 1]] == 0
      front += 1
      seen[a[front]] += 1
      counter += front - back + 1
      return maximum if counter >= maximum
    else
      seen[a[back]] -= 1
      back += 1
    end
  end

  counter
end
