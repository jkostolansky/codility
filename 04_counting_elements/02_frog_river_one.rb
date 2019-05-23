def solution(x, a)
  remaining = x
  expected = Array.new(x, true)

  a.each_with_index do |item, i|
    if expected[item - 1] == true
      expected[item - 1] = false
      remaining -= 1
    end

    return i if remaining == 0
  end

  -1
end
