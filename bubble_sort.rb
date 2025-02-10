# frozen_string_literal: true

# rubocop: disable Metrics/MethodLength
def bubble_sort(array)
  array_length = array.length

  loop do
    swapped = false
    (1..array_length - 1).each do |index|
      if array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      end
    end
    array_length -= 1
    break unless swapped
  end
  array
end
# rubocop: enable Metrics/MethodLength

array_list = [4, 3, 78, 2, 0, 2, 1, 2]
p bubble_sort(array_list)
