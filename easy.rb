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
