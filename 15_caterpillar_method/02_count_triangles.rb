def solution(a)
  count = 0
  sorted = a.sort

  0.upto(sorted.size - 3) do |i|
    k = i + 1

    (i + 1).upto(sorted.size - 2) do |j|
      while (k < sorted.size && sorted[i] + sorted[j] > sorted[k])
        k += 1
      end

      count += k - j - 1
    end
  end

  count
end
