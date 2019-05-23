def solution(h)
  blocks_sum = 0
  active_blocks = []

  h.each do |height|
    while active_blocks.any? && active_blocks.last > height
      active_blocks.pop
    end

    if active_blocks.empty? || active_blocks.last != height
      active_blocks << height
      blocks_sum += 1
    end
  end

  blocks_sum
end
