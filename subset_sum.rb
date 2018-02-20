=begin
Subset Sum problem for positive numbers.
Vladislav Trotsenko Ruby algo realization.

Find max subset sum, that equal to or as close as possible the given number.
=end

def subset_sum(set, sum)
  matrix = []; (sum+1).times { matrix << Array.new(set.size+1, 0) }
    for i in 1..set.size
      for j in 1..sum
        if j < set[i-1]
          matrix[j][i] = matrix[j][i-1]
        else
          matrix[j][i] = [matrix[j][i-1], set[i-1] + matrix[j-set[i-1]][i-1]].max
        end
      end
    end
  matrix.flatten.max
end

subset_sum((1..74).to_a.sample(10), 42)