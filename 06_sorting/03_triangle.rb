def solution(a)
  sorted = a.sort

  0.upto(a.size - 3) do |i|
    x, y, z = sorted[i], sorted[i + 1], sorted[i + 2]
    return 1 if x + y > z && y + z > x && z + x > y
  end

  0
end
