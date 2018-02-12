=begin
Binary search algo realization by Vladislav Trotsenko.

In computer science, binary search, also known as half-interval search,
logarithmic search or binary chop is a search algorithm that finds the
position of a target value within a sorted array.
=end

def binary_search(arr, target)
  abort 'Before using binary search your array must be pre-sorted!' unless arr == arr.sort
    low, high, guessed = 0, arr.size-1, false
      while low <= high
        mid = (low+high)/2; item = arr[mid]
          case item <=> target
            when -1 then low = mid+1
            when 1 then high = mid-1
            else guessed = true and break
          end
      end
  guessed ? mid : nil
end

binary_search([1,3,5,7], 1)