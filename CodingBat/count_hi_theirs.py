def count_hi(str):
  sum = 0
  ## Loop to length-1 and access index i and i+1
  ## in the loop.
  for i in range(len(str)-1):
    if str[i:i+2] == 'hi':
      sum = sum + 1
  return sum