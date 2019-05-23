def solution(s)
  pairs = { "(" => ")", "[" => "]", "{" => "}" }

  stack = []
  s.each_char do |char|
    if pairs.has_key?(char)
      stack << char
    elsif pairs[stack.pop] != char
      return 0
    end
  end

  stack.empty? ? 1 : 0
end
