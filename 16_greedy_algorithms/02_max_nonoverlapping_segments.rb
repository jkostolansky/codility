def solution(a, b)
  counter = 0

  last_end = nil
  0.upto(a.size - 1) do |i|
    if last_end.nil? || a[i] > last_end
      last_end = b[i]
      counter += 1
    end
  end

  counter
end
