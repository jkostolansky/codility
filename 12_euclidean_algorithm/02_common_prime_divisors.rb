def gcd(a, b)
  return gcd(b, a) if b > a
  a % b == 0 ? b : gcd(b, a % b)
end

def remove_divisors(a, b)
  while a > 1
    gcd_val = gcd(a, b)
    break if gcd_val == 1
    a = a / gcd_val
  end
  a
end

def solution(a, b)
  counter = 0

  0.upto(a.size - 1) do |i|
    x, y = a[i], b[i]
    gcd_val = gcd(x, y)

    next if remove_divisors(x, gcd_val) != 1
    next if remove_divisors(y, gcd_val) != 1

    counter += 1
  end

  counter
end
