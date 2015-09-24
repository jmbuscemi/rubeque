require 'minitest/autorun'
require 'minitest/pride'

require './easy'

class RubequeTest < Minitest::Test

  def test_reverse_each_word
    assert_equal "olleH ,ereht dna woh era ?uoy", reverse_each_word("Hello there, and how are you?")
  end

  def test_class_test
    assert_equal Bar.new.say_name, "bar"
  end

  def test_random_numbers
    a = rand(100..500)
    b = rand(100..500)
    c = rand(100..500)
    d = rand(100..500)

    assert_equal (a > 99 && a < 501), true
    assert_equal (b > 99 && b < 501), true
    assert_equal (c > 99 && c < 501), true
    assert_equal (d > 99 && d < 501), true
  end

  def test_fibonacci
    assert_equal 0, fibo_finder(0)
    assert_equal 1, fibo_finder(1)
    assert_equal 3, fibo_finder(4)
    assert_equal 13, fibo_finder(7)
    assert_equal 55, fibo_finder(10)
  end

  def test_hash_key
    assert_equal "j", key_for_min_value({"k" => 2, "h" => 3, "j" => 1})
    assert_equal "z", key_for_min_value({"o" => 0, "z" => -2, "j" => 1})
    assert_equal nil, key_for_min_value({})
  end




end
