def bubble_sort(array)
  iteration = array.length
  (iteration).times do
    swapped = true
    for i in 1...iteration do
      if array[i-1]> array[i]
        array[i-1],array[i] = array[i],array[i-1]
        swapped = true
      end
    end
    iteration-=1
  end
  array
end

array_list = [4,3,78,2,0,2,1,2]
p bubble_sort(array_list)
