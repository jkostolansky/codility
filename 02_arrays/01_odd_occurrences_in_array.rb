def solution(a)
  missing = 0
  a.each { |i| missing ^= i }
  missing
end
