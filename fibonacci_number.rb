=begin
Fibonacci Number algo.
=end

#Slow recursive solution
#fib(80000) => error, stack level too deep
def  fib(n)
  return n if n < 2
  fib(n-1) + fib(n-2)
end

#Fast recursive solution with caching
#fib(80000) => error, stack level too deep
$cache = {}
def fib(n)
  if $cache[n].nil?
    $cache[n] = n < 2 ? n : fib(n-1) + fib(n-2)
  end
  $cache[n]
end

#Loop solution #1
#fib(80000) => 0.224s
def fib(n)
  return n if n < 2
  f0, f1 = 0, 1
    (n-1).times { f0, f1 = f1, f0+f1 }
  f1
end

#Loop solution #2
#fib(80000) => 0.260s
def fib(n)
  return n if n < 2
  arr = [0, 1]
    (n-1).times { arr << arr.last(2).inject(:+) }
  arr.last
end

fib(80000)