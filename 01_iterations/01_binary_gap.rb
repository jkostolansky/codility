def solution(n)
  max_gap = 0
  current_gap = 0

  n.to_s(2).each_char do |char|
    if char == "1"
      max_gap = current_gap if max_gap < current_gap
      current_gap = 0
    else # char == 0
      current_gap += 1
    end
  end

  max_gap
end
