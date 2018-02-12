=begin
Linear search algo realization by Vladislav Trotsenko.

The complexity of the algorithm: O(n).
=end

def linear_search(arr, target)
  is_target_found = false
    for index in 0...arr.size
      is_target_found = index and break if arr[index] == target
    end
  is_target_found
end

linear_search([4,1,92,99,32,27,42,12,1,10], 43)