def bubble_sort(array)
  array.each_with_index do |value1, index1|
    array.each_with_index do |value2, index2|
      if value1 < value2
        array[index1], array[index2] = array[index2], array[index1]
      end
    end
  end
end
array_list = [4,3,3,78,2,0,2]
puts bubble_sort(array_list)
