def solution(a)
  max_item = a.max + 1

  item_counter = {}
  a.each do |item|
    item_counter[item] = 0 if item_counter[item].nil?
    item_counter[item] += 1
  end

  div_counter = Array.new(max_item, 0)
  item_counter.each do |item, count|
    (item..max_item - 1).step(item) do |i|
      div_counter[i] += count
    end
  end

  a.map do |item|
    a.size - div_counter[item]
  end
end
