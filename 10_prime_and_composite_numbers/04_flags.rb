def solution(a)
  peaks = 1.upto(a.size - 2).select { |i| a[i] > a[i - 1] && a[i] > a[i + 1] }

  flags_max_found = 0
  flags_min = 0
  flags_max = peaks.size

  while flags_min <= flags_max do
    flags_count = (flags_min + flags_max) / 2

    flags_set = 1
    last_flagged_peak = 0

    1.upto(peaks.size - 1) do |i|
      if peaks[i] - peaks[last_flagged_peak] >= flags_count
        flags_set += 1
        last_flagged_peak = i
      end

      break if flags_set >= flags_count
    end

    if flags_set >= flags_count
      flags_max_found = flags_count
      flags_min = flags_count + 1
    else
      flags_max = flags_count - 1
    end
  end

  flags_max_found
end
