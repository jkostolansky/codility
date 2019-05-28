def solution(a)
  maximums = Array.new(a.size, 0)
  maximums[0] = a[0]

  1.upto(a.size - 1) do |i|
    last_maximum = nil
    ([0, i - 5].max).upto(i - 1) do |j|
      if last_maximum.nil? || last_maximum < maximums[j]
        last_maximum = maximums[j]
      end
    end
    maximums[i] = a[i] + last_maximum
  end

  maximums[a.size - 1]
end
