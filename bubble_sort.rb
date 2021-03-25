def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

def bubble_sort_by(arr)
  (0..arr.length - 2).each do |i|
    sort_it = yield(arr[i], arr[i + 1])
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if sort_it.positive?
  end
  arr
end
