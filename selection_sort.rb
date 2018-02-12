=begin
Selection sort algo realization by Vladislav Trotsenko.

In computer science, selection sort is a sorting algorithm, specifically
an in-place comparison sort. This algo is inefficient on large lists, and
generally performs worse than the similar insertion sort.

The complexity of the algorithm: O(n^2).
=end

def selection_sort(arr)
  (arr.size-1).times do |index|
    tmp_item, tmp_index = arr[index], index
      for i in index...arr.size
        tmp_item, tmp_index = arr[i], i if arr[i] < tmp_item
      end
    arr[index], arr[tmp_index] = arr[tmp_index], arr[index]
  end
  arr
end


selection_sort([3, 1, 2, 4, 5, 3, 7])