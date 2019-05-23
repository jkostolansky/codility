def solution(a, b, k)
  first = nil
  a.upto(b) do |i|
    if i % k == 0
      first = i
      break
    end
  end

  last = nil
  b.downto(a) do |i|
    if i % k == 0
      last = i
      break
    end
  end

  return 0 if first.nil? || last.nil?

  ((last - first) / k) + 1
end
