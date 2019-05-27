def solution(n, p, q)
  primes = Array.new(n + 1, 0)
  2.upto(Math.sqrt(n)) do |i|
    next if primes[i] > 0
    (i + i..n).step(i) do |j|
      next if primes[j] > 0
      primes[j] = i
    end
  end

  semiprimes = Array.new(n + 1, 0)
  2.upto(n) do |i|
    x = i
    while primes[x] > 0
      x = x / primes[x]
      semiprimes[i] += 1
    end
    semiprimes[i] += 1 if i > 1
  end

  prefix_sums = Array.new(n + 2, 0)
  4.upto(n) do |i|
    prefix_sums[i + 1] = prefix_sums[i]
    prefix_sums[i + 1] += 1 if semiprimes[i] == 2
  end

  0.upto(p.size - 1).map do |i|
    prefix_sums[q[i] + 1] - prefix_sums[p[i]]
  end
end
