# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.max(2).sum
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each do |x,y| 
    if (x+y)==(n) 
      return true 
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return /\A(?=[^aeiou])(?=[a-z])/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[01]+$/.match(s) == nil
    return false
  end
  return /0+$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn = '0', price = 0.0)
    if isbn.empty?
      raise ArgumentError.new("ISBN cannot be empty")
    end
    if price <= 0.0
      raise ArgumentError.new("Price must be positive")
    end
      
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end

end
