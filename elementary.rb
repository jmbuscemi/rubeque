# Maximum
def maximum(arr)
  max = 0
  arr.each { |n| max = n if n > max }
  max
end

#Fizzbuzz
def fizzbuzz(x)
  if x % 3 == 0 && x % 5 ==0
    "FizzBuzz"
  elsif x % 3 == 0
    "Fizz"
  else x % 5 == 0
    "Buzz"
  end
end

#Blackjack
def twenty_one?(*args)
  args.reduce(:+) == 21
end

#Temperature Robot
def temperature_bot(temp)
  # temperature bot is American but takes Celsius temperatures
  case temp
  when (18..21)
    "I like this temperature"
  else
    "This is uncomfortable for me"
  end
end

#Injected and Rejected
def sum_over_50(arr)
  arr.reject{|n| n < 51}.inject(0){|sum, n| sum + n}
end

#Getters and Setters
class Character
  attr_accessor :name, :quote
end

#Caution Case
def caution_case(obj)
  case obj
  when obj
    true
  else
    false
  end
end

#Baby got Stacks
class Stack
  def initialize(array)
    @array = array
  end

  def pop(n = 1)
    n == 1 ? @array.pop : @array.pop(n).reverse!
  end

  def push(array)
    return true if array.each { |n| @array << n }
  end

  def to_a
    @array
  end
end

#Missing Method 4
class A
end

class B < A
end

#Bigger Element
def first_even(items)
  items.find{|n| n.even? }
end
