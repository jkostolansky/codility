def solution(s)
  letters_down = ("a".."z")
  letters_up = ("A".."Z")
  numbers = ("0".."9")

  words = s.split.map{ |w| [w.size, w] }.sort

  (words.size - 1).downto(0) do |i|
    size, word = words[i]

    letters_count = 0
    numbers_count = 0
    valid_chars = true

    word.each_char do |char|
      if numbers.include?(char)
        numbers_count += 1
      elsif letters_down.include?(char) || letters_up.include?(char)
        letters_count += 1
      else
        valid_chars = false
        break
      end
    end

    if valid_chars && letters_count % 2 == 0 && numbers_count % 2 == 1
      return size
    end
  end

  -1
end
