require 'minitest/autorun'
require 'minitest/pride'

require './solutions'

class RubequeTest < Minitest::Test
  def test_truth
    assert_equal true, true
  end

  def test_upcase
    assert_equal 'HELLO WORLD', 'hello world'.upcase
  end

  def test_reverse
    assert_equal 'nocab yknuhc'.reverse, "chunky bacon"
  end

  def test_maximum
    assert_equal maximum([2, 42, 22, 02]), 42
    assert_equal maximum([-2, 0, 33, 304, 2, -2]), 304
    assert_equal maximum([1]), 1
  end

  def test_nil_values
    [0, '', 'chunky_bacon'].each { |v| assert_equal v.nil?, false }
  end

  def test_map
    assert_equal [1, 4, 9, 16], (1..4).map { |n| n*n }
  end

  def test_fizzbuzz
    assert_equal fizzbuzz(3), "Fizz"
    assert_equal fizzbuzz(50), "Buzz"
    assert_equal fizzbuzz(15), "FizzBuzz"
    assert_equal fizzbuzz(5175), "FizzBuzz"
  end

  def test_missing_method_01
    assert_equal [1, 4, nil, 9, 16, nil].compact.inject(0) {|sum, number| sum + number}, 30
  end

  def test_blackjack
    assert_equal twenty_one?(3, 4, 5, 6, 3), true
    assert_equal twenty_one?(3, 11, 10), false
    assert_equal twenty_one?(10, 11), true
    assert_equal twenty_one?(10, 10), false
  end

  def test_missing_method_02
    assert_equal [1, 3, 7, 4, 9, 8].detect(&:even?), 4
  end

  def test_temperature_robot
    assert_equal temperature_bot(18), "I like this temperature"
    assert_equal temperature_bot(21), "I like this temperature"
    assert_equal temperature_bot(22), "This is uncomfortable for me"
    assert_equal temperature_bot(-3), "This is uncomfortable for me"
  end

  def test_injected_rejected
    assert_equal sum_over_50([29, 52, 77, 102]), 231
    assert_equal sum_over_50([5, 11, 50]), 0
    assert_equal sum_over_50([4, 8, 15, 16, 23, 42]), 0
    assert_equal sum_over_50([300, 22, 1, 55, 42]), 355
  end

  def test_no_way_this_works
    @name = "Dave"
    str = "My mind is going #@name"

    assert_equal (str == "My mind is going Dave"), true
  end

  def test_and
    roses = "blue" && "red"
    violets = "blue" and "red"

    assert_equal roses, "red"
    assert_equal violets, "blue"
  end

end
