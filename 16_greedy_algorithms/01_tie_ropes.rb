def solution(k, a)
  counter = 0

  total_length = 0
  a.each do |rope_length|
    total_length += rope_length
    if total_length >= k
      counter += 1
      total_length = 0
    end
  end

  counter
end
