#Reverse Each Word
def reverse_each_word(sentence)
  sentence.split.map{|w| w.reverse}.join(" ")
end

#Class Test
class Foo
  def name
    "foo"
  end

  def say_name
    "#{name}"
  end
end

class Bar < Foo
  def name
    "bar"
  end
end

#Your Favorite and Mine, Fibonacci!
def fibo_finder(n)
  return n if (n < 2)
  fibo_finder(n-1) + fibo_finder(n-2)
end

#The Little Hash Key that Could
def key_for_min_value(hash)
  hash.key(hash.values.min)
end

#Including Modules
module A
  def name
    "a"
  end
end

module B
  def name
    "b"
  end
end

class C
  include A
  include B
end

class D
  include B, A
end

#Constant Rule
CONST = rand
class Foo
  CONST = rand(100)
  def foo
    return ::CONST
  end
end

#Method Acting
def dogs
  __method__
end

def cats
  __method__
end

def chunky_bacon
  __method__
end

#Area of Expertise
class Point
  attr_accessor :x, :y
  def initialize(x, y)
    self.x, self.y = x, y
  end
end

class Rectangle
  attr_accessor :upper_left, :lower_right

  def initialize(upper_left, lower_right)
    self.upper_left, self.lower_right = upper_left, lower_right
  end

  def area
    (upper_left.x - lower_right.x)*(upper_left.y - lower_right.y)
  end
end

#Each with Object
def even_sum(arr)
  arr.each_with_object([]) do |w, a|
    a << w.reverse if w && w.length % 2 == 0
  end
end
