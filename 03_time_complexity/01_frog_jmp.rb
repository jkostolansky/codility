def solution(x, y, d)
  div, mod = (y - x).divmod(d)
  mod == 0 ? div : div + 1
end
