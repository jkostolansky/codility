def solution(a)
  seen = []
  a.each { |i| seen[i] = true if i > 0 }
  1.upto(100_001) { |i| return i if seen[i] != true }
end
