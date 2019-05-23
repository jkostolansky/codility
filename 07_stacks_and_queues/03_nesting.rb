def solution(s)
  stack = []

  s.each_char do |char|
    if char == "("
      stack << char
    elsif stack.pop != "("
      return 0
    end
  end

  stack.empty? ? 1 : 0
end
