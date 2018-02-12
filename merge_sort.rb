=begin
Merge sort algo realization by Vladislav Trotsenko.

In computer science, merge sort (also commonly spelled mergesort) is an efficient,
general-purpose, comparison-based sorting algorithm. Most implementations produce
a stable sort, which means that the implementation preserves the input order of
equal elements in the sorted output. Mergesort is a divide and conquer algorithm
that was invented by John von Neumann in 1945.

The complexity of the algorithm: O(n log n).
=end

def merge_sort(arr)
  return arr unless arr.size > 1
    mid = arr.size/2
      a, b, sorted = merge_sort(arr[0...mid]), merge_sort(arr[mid..-1]), []
    sorted << (a[0] < b[0] ? a.shift : b.shift) while [a,b].none?(&:empty?)
  sorted + a + b
end

merge_sort([4,2,1,8,6,3,7,5,10])