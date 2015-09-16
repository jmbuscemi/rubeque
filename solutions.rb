# Maximum
def maximum(arr)
  max = 0
  arr.each { |n| max = n if n > max }
  max
end

def fizzbuzz(x)
  if x % 3 == 0 && x % 5 ==0
    "FizzBuzz"
  elsif x % 3 == 0
    "Fizz"
  else x % 5 == 0
    "Buzz"
  end
end

def twenty_one?(*args)
  args.reduce(:+) == 21
end

def temperature_bot(temp)
  # temperature bot is American but takes Celsius temperatures
  case temp
  when (18..21)
    "I like this temperature"
  else
    "This is uncomfortable for me"
  end
end

def sum_over_50(arr)
  arr.reject{|n| n < 51}.inject(0){|sum, n| sum + n}
end