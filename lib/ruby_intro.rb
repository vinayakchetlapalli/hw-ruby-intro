# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE	
 result = 0
 arr.each { |i| result += i }
 result
end

def max_2_sum arr
  # YOUR CODE HERE
 if arr.length == 0
  return 0
 elsif arr.length == 1
  return arr[0]
 else
  arr.sort!().reverse!()
  return arr[0] + arr[1]
 end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
 if arr.length < 2
  return false
 else 
  start = arr[0]
  last = arr.length - 1
  arr[1, last].each do |i|
   if start + i == n
     return true
   end
  end
  return sum_to_n?(arr[1, last], n)
 end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /\A[[^aeiouAEIOU] && [:alpha:]]/.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /[^01]/ =~ s || s.length == 0
    return false
  else 
    num = s.to_i(base = 2)
    if num % 4 == 0 
      return true
    end 
    return false
  end  
end

# Part 3

class BookInStock
# YOUR CODE HERE
 @isbn = 0
 @price = 0.0

 def initialize(i, p)
   if i.length == 0 || p <= 0
    raise ArgumentError
   end 
   @isbn = i
   @price = p
 end

 def isbn
  @isbn
 end 

 def price
  @price
 end 

 def isbn=(i)
  if i.length == 0 
    raise ArgumentError
  end 
  @isbn = i
 end 

 def price=(p)
  if p <= 0
    raise ArgumentError
  end 
  @price = p
 end 
 def price_as_string 
  "$" + "%.2f" % price
 end 

end
