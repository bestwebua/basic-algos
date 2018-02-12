=begin
Bubble sort algo realization by Vladislav Trotsenko.

Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that
repeatedly steps through the list to be sorted, compares each pair of adjacent items
and swaps them if they are in the wrong order.

The complexity of the algorithm: O(n^2).
=end

def bubble_sort(arr)
  loop do
    swapped = false
      (arr.size-1).times do |index|
        if arr[index] > arr[index+1]
          arr[index], arr[index+1] = arr[index+1], arr[index]; swapped = true
        end
      end
    break if not swapped
  end
  arr
end

bubble_sort((1..1000).to_a.shuffle)