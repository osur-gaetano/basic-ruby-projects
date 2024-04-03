def stock_picker(array)

  highest_day_value = array.find_index(array.max) == 0 ? array.slice(1..array.length).max : array.max
  lowest_day_value = array.slice(0..array.find_index(highest_day_value)).min

  [array.find_index(lowest_day_value), best_day_to_sell = array.find_index(highest_day_value)]
end

days = stock_picker([17,3,6,9,15,8,6,1,10])
puts days
