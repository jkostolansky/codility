def solution(a, k)
  rotated = []

  a.each_with_index do |item, i|
    j = (i + k) % a.size
    rotated[j] = item
  end

  rotated
end
