def solution(a, b)
  living = 0
  stack_of_ones = []

  0.upto(a.size - 1) do |i|
    living += 1
    if b[i] == 1
      stack_of_ones << a[i]
    else # b[i] == 0
      while stack_of_ones.any?
        living -= 1
        last_size_of_one = stack_of_ones.pop
        if a[i] < last_size_of_one
          stack_of_ones << last_size_of_one
          break
        end
      end
    end
  end

  living
end
