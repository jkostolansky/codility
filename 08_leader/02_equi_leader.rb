def solution(a)
  size = 0
  candidate = nil
  a.each do |item|
    if size == 0
      size += 1
      candidate = item
    elsif candidate == item
      size += 1
    else candidate != item
      size -= 1
    end
  end

  leader = nil
  leader_count = a.count(candidate)
  if size > 0 && leader_count > a.size / 2
    leader = candidate
  end

  equi_leaders = 0
  if leader
    left_count = 0
    right_count = leader_count

    0.upto(a.size - 2) do |i|
      if a[i] == leader
        left_count += 1
        right_count -= 1
      end

      left_size = i + 1
      right_size = a.size - left_size

      if left_count > left_size / 2 && right_count > right_size / 2
        equi_leaders += 1
      end
    end
  end

  equi_leaders
end
