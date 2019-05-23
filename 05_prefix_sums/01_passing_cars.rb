def solution(a)
  passings = 0
  east_cnt = 0

  a.each do |item|
    if item == 1
      passings += east_cnt
      return -1 if passings > 1_000_000_000
    else # item == 0
      east_cnt += 1
    end
  end

  passings
end
