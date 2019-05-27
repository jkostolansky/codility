def solution(a)
  n = a.size

  fibonacci = [0, 1]
  i = 2
  loop do
    candidate = fibonacci[i - 2] + fibonacci[i - 1]
    break if candidate > n + 1
    fibonacci[i] = candidate
    i += 1
  end

  jumps = Array.new(n + 1, -1)
  0.upto(n) do |i|
    next if i != n && a[i] == 0
    min_jumps = nil
    (fibonacci.size - 1).downto(0) do |j|
      prev_position = i - fibonacci[j]
      if prev_position == -1
        min_jumps = 1
        break
      elsif jumps[prev_position] > 0
        new_jumps = jumps[prev_position] + 1
        min_jumps = new_jumps if min_jumps.nil? || min_jumps > new_jumps
      end
    end
    jumps[i] = min_jumps || -1
  end

  jumps[n]
end
