def gcd(a, b)
  a % b == 0 ? b : gcd(b, a % b)
end

def solution(n, m)
  b, a = [n, m].sort
  lcm = (a * b) / gcd(a, b)
  lcm / m
end
