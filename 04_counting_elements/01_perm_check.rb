def solution(a)
  maximum = a.size
  seen = Array.new(maximum, false)

  a.each do |i|
    return 0 if i > maximum
    seen[i - 1] = true
  end

  seen.include?(false) ? 0 : 1
end
