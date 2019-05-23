def solution(s, p, q)
  letters = ["A", "C", "G", "T"]

  prefix_sums = Hash.new { |h, k| h[k] = Array.new(s.size + 1, 0) }
  s.each_char.with_index do |char, i|
    letters.each do |letter|
      prefix_sums[letter][i + 1] = prefix_sums[letter][i]
    end
    prefix_sums[char][i + 1] += 1
  end

  min_impacts = []
  0.upto(p.size - 1) do |i|
    l, r = p[i], q[i]
    letters.each_with_index do |letter, impact|
      if prefix_sums[letter][r + 1] - prefix_sums[letter][l] > 0
        min_impacts << (impact + 1)
        break
      end
    end
  end

  min_impacts
end
