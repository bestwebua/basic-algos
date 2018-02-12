=begin
Bogosort algo realization by Vladislav Trotsenko.

Bogosort (also permutation sort, stupid sort, slowsort, shotgun sort or monkey sort) is a
highly ineffective sorting algorithm based on the generate and test paradigm.

The complexity of the algorithm: O(n*n!).
=end

def bogo_sort(arr)
  loop do
    swapped = false
      (arr.size-1).times { |index| arr.shuffle! and swapped = true if arr[index] > arr[index+1] }
    break if not swapped
  end
  arr
end

bogo_sort((1..10).to_a.shuffle)
