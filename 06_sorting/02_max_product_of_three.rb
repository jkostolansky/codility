def solution(a)
  sorted = a.sort

  [
    sorted[0]  * sorted[1]  * sorted[2],
    sorted[0]  * sorted[1]  * sorted[-1],
    sorted[0]  * sorted[-2] * sorted[-1],
    sorted[-3] * sorted[-2] * sorted[-1],
  ].max
end
