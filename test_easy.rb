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






end
