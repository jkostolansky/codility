def solution(a)
  min = nil
  min_start = nil

  0.upto(a.size - 2) do |i|
    avg2 = (a[i] + a[i + 1]) / 2.0
    if min.nil? || min > avg2
      min = avg2
      min_start = i
    end

    if i + 2 < a.size
      avg3 = (a[i] + a[i + 1] + a[i + 2]) / 3.0
      if min.nil? || min > avg3
        min = avg3
        min_start = i
      end
    end
  end

  min_start
end
