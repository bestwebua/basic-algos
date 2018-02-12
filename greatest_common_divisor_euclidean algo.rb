=begin
Greatest common divisor, Euclidean algorithm by Vladislav Trotsenko.

The algorithm for finding the GCD by dividing:
1. The greater the number divided into smaller.
2. If the remainder is divided, then the smaller
number is the GCD (it is necessary to leave the loop).
3. If there is a remainder, then a larger number is
replaced by the remainder of the division.
4. Proceed to step 1.

Example:
Find the GCD for 30 and 18.30/18 = 1 (residue 12)
18/12 = 1 (balance 6)
12/6 = 2 (remainder 0). End: 

The GCD is a divisor.GCD (30, 18) = 6
=end

#My Ryby realisation of Euclidean algorithm
def gcd(a,b)
  a > b ? a%=b : b%=a while [a,b].all?(&:nonzero?); a+b
end

gcd(3,18)

#default Ruby method
3.gcd(18)

#Greatest common divisor for array
class Array
  def gcd
    self.all? { |item| item.is_a?(Integer) } ? self.reduce(self[0], :gcd) : nil
  end
end

[25,40,10].gcd