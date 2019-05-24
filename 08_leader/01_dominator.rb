def solution(a)
  size = 0
  candidate = nil

  a.each do |item|
    if size == 0
      size += 1
      candidate = item
    elsif candidate == item
      size += 1
    else # candidate != item
      size -= 1
    end
  end

  return -1 if size == 0

  counter = 0
  candidate_index = nil
  a.each_with_index do |item, i|
    if item == candidate
      counter += 1
      candidate_index = i
    end
  end

  (counter > a.size / 2) ? candidate_index : -1
end
