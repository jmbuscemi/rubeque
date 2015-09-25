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
