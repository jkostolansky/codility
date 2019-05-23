def solution(a)
  min = nil
  lsum = 0
  rsum = a.inject(0, :+)

  0.upto(a.size - 2) do |i|
    lsum += a[i]
    rsum -= a[i]
    diff = (lsum - rsum).abs
    min = diff if min.nil? || min > diff
  end

  min
end
