def solution(n)
  factors = 0

  1.upto(Math.sqrt(n)) do |i|
    if i * i == n
      factors += 1
    elsif n % i == 0
      factors += 2
    end
  end

  factors
end
