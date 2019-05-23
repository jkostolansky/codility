def solution(a)
  changes = Hash.new { |h, k| h[k] = { started: 0, ended: 0 }}

  a.each_with_index do |radius, position|
    changes[position - radius][:started] += 1
    changes[position + radius][:ended]   += 1
  end

  active = 0
  intersections = 0
  changes.sort.each do |position, change|
    started = change[:started]
    ended   = change[:ended]

    1.upto(started) do
      intersections += active
      return -1 if intersections > 10_000_000
      active += 1
    end

    active -= ended
  end

  intersections
end
