# When done, submit this entire file to the autograder.

# Part 1
require 'set'

def sum arr
  if arr.length == 0 
    return 0
  else
    sum = 0
    arr.each { |x| sum +=x}
    return sum
  end
end

def max_2_sum arr
  # returns the sum of the two largest numbers in an array
  max = -99999
  lower_max = -99999
  # return if 0
  if arr.length == 0 
    return 0
  elsif arr.length == 1 
    return arr[0]
  end
  # loop over every element of array
  for i in arr
    # if cur element is greater than max set it as max
    if i > max
      lower_max = max # set the lower max to previous max
      max = i
    # otherwise check if i is greater than lower max
    elsif i > lower_max
      lower_max = i
    end
  end
  return max + lower_max
end

def sum_to_n? arr, n
  # takes an array of integers and an additional integer, n,
  # as arguments and returns true if any two elements in the array of integers sum to n
  sum_to_vals = Set.new
  
  for i in arr
    target = n - i
    if sum_to_vals.include? target
      return true
    else sum_to_vals.add i
    end
  end
  return false
    
end


# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if ( s =~ /^[10]*00$/)
    return true
  elsif s == '0'
    return true
  else  
    return false
  end

end

# Part 3

class BookInStock
  attr_reader :isbn
  attr_reader :price
  
  def initialize(isbn,price)
    if isbn.empty? || price <= 0.0
      raise ArgumentError, "somethings wrong"
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price) 
    @price = price
  end
  
  def price_as_string
    return '$%.2f' % @price
  end
end
