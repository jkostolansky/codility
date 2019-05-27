def solution(a, b)
  fibonacci = [0, 1]
  2.upto(a.max + 1).map do |i|
    fibonacci[i] = fibonacci[i - 2] + fibonacci[i - 1]
  end

  0.upto(a.size - 1).map do |i|
    x = fibonacci[a[i] + 1]
    y = 2 ** b[i]
    x % y
  end
end
