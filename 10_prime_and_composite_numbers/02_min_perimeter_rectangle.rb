def solution(n)
  Math.sqrt(n).floor.downto(1) do |i|
    return 2 * (i + n / i) if n % i == 0
  end
end
