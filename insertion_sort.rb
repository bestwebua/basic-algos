=begin
Insertion sort algo realization by Vladislav Trotsenko.

Insertion sort is a simple sorting algorithm that builds the final sorted array (or list)
one item at a time. It is much less efficient on large lists than more advanced algorithms
such as quicksort, heapsort, or merge sort. 

The complexity of the algorithm: O(n^2).
=end

def insertion_sort(arr)
  for step in 1...arr.size
  index = step
    while arr[index-1] > arr[index] && index > 0
      arr[index], arr[index-1] = arr[index-1], arr[index]
      index-=1
    end
  end
  arr
end

insertion_sort((1..100).to_a.shuffle)

=begin
#First version
def insertion_sort(arr)
  for step in 1...arr.size
  index = step
    while index > 0
      arr[index], arr[index-1] = arr[index-1], arr[index] if arr[index-1] > arr[index]
      index-=1
    end
  end
  arr
end
=end
