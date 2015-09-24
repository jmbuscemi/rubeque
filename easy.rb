def reverse_each_word(sentence)
  sentence.split.map{|w| w.reverse}.join(" ")
end

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

def fibo_finder(n)
  return n if (n < 2)
  fibo_finder(n-1) + fibo_finder(n-2)
end

def key_for_min_value(hash)
  hash.key(hash.values.min)
end
