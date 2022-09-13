# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  end

  sum = 0
  for i in 0...arr.length() do
    sum += arr[i]
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  end

  if arr.length() == 1
    #puts arr[0]
    return arr[0]
  end

  sorted_arr = arr.sort
  largest_val = sorted_arr[sorted_arr.length()-1]
  second_large_val = sorted_arr[sorted_arr.length()-2]

  return largest_val + second_large_val

end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length() < 2
    return false
  else
    for i in 0...arr.length() do
      for j in i+1...arr.length() do
        if arr[i] + arr[j] == number
          return true
        end
      end
    end
    return false
  end

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length() == 0
    return false
  end

  consonants = ["B","b","C","c","D","d","F","f","G","g","H","h","J","j","K","k","L","l","M","m","N","n","P","p","Q","q","R","r","S","s","T","t","V","v","W","w","X","x","Y","y","Z","z"]
  for i in 0...consonants.length() do
    if string[0] == consonants[i] 
      return true
    end
  end
  return false 
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length() == 0
    return false
  end

  for i in 0...string.length() do
    if (string[i] != "0" and string[i] != "1")
      return false
    end
  end

  converted_num = string.to_i(2)

  if converted_num.modulo(4) == 0
    #puts converted_num
    return true
  else
    return false
  end

end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price

    raise ArgumentError, "Invalid ISBN Number" if isbn.empty?
    raise ArgumentError, "Invalid Book Price" if price <= 0
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end
  
  def price_as_string()
    formatted_price = sprintf("%.2f", @price)
    return "$" + formatted_price
  end
  
end
