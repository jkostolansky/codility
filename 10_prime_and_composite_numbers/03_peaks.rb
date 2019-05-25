def solution(a)
  peaks_sums = Array.new(a.size + 1, 0)

  1.upto(a.size - 1) do |i|
    peaks_sums[i + 1] += peaks_sums[i]

    if i < a.size - 1
      value = (a[i] > a[i - 1] && a[i] > a[i + 1]) ? 1 : 0
      peaks_sums[i + 1] += value
    end
  end

  1.upto(a.size) do |block_size|
    next if a.size % block_size != 0

    number_of_blocks = a.size / block_size
    all_good = true

    (0..a.size - block_size).step(block_size) do |block_start|
      block_end = block_start + block_size - 1
      if peaks_sums[block_end + 1] <= peaks_sums[block_start]
        all_good = false
        break
      end
    end

    return number_of_blocks if all_good
  end

  0
end
