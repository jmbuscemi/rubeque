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

  def test_including_modules
    assert_equal C.new.name, "b"
    assert_equal D.new.name, "b"
  end

  def test_picking_lottery_numbers
    superset = (1..500).to_a
    week1 = superset.sample(5)
    week2 = superset.sample(5)

    assert_equal (week1.length == 5 && week2.length == 5), true
    assert_equal (week1.sort != week2.sort), true
  end

  def test_constant_rule
    assert_equal Foo.new.foo, CONST
  end

  def test_intro_to_regex
    assert_equal "john@mail.com to jane@mail.com".scan(/\w+@\w+\.\w{3}/), ["john@mail.com", "jane@mail.com"]
    assert_equal "why@ @chunkybacon.com why@chunkybacon.com".scan(/\w+@\w+\.\w{3}/), ["why@chunkybacon.com"]
    assert_equal "why @ @ why@chunkybacon".scan(/\w+@\w+\.\w{3}/), []
  end

  def test_method_acting
    assert_equal dogs, :dogs
    assert_equal cats, :cats
    assert_equal chunky_bacon, :chunky_bacon
  end

  def test_area_of_expertise
    p1 = Point.new(0, 0)
    p2 = Point.new(3, 4)
    assert_equal Rectangle.new(p1, p2).area, 12
    assert_equal Rectangle.new(p2, p1).area, 12
    assert_equal Rectangle.new(Point.new(13, 5), p2).area,  10
  end

  def test_each_with_object
    assert_equal even_sum(["cat", "dog", "bird", "fish"]), ["drib", "hsif"]
    assert_equal even_sum(["why", "chunky", nil, "lucky", "stiff"]), ["yknuhc"]
    assert_equal even_sum(["rewsna", "hitch hiker", "si", "guide", "galaxies ", "24"]), ["answer", "is", "42"]
  end

  def test_lambda_lambda_lambda
    even_check = lambda{|*nums| nums.all? {|x| x.even?} }

    assert_equal [[2, 4], [1, 2], [8, 12]].select{|arr| even_check.call(*arr)}, [[2, 4], [8, 12]]
    assert_equal even_check.call(42), true
    assert_equal [[2, 4], [2, 1], [8, 11]].select{|arr| even_check.call(*arr)}, [[2, 4]]
  end

  def test_separate_with_commas
    assert_equal         "1", separate_with_comma(1)
    assert_equal        "10", separate_with_comma(10)
    assert_equal       "100", separate_with_comma(100)
    assert_equal     "1,000", separate_with_comma(1000)
    assert_equal    "10,000", separate_with_comma(10000)
    assert_equal   "100,000", separate_with_comma(100000)
    assert_equal "1,000,000", separate_with_comma(1000000)
  end

  def test_random_boolean
    array = []

    100.times do
      if random_boolean
        array << :dummy
      end
    end

    assert_equal (1..100) === array.size, true
    assert_equal array.size != 100, true
  end

  def test_fixing_bad_code
    person = Person.new("kurt vonnegut", 89, "caucasian")

    assert_equal person.name, "Kurt Vonnegut"
    assert_equal person.race, "Caucasian"
    assert_equal person.age, 89
  end

  def test_keys_of_hash
    assert_equal [:a], {a: 1, b: 2, c: 3}.keys_of(1)
    assert_equal [:a, :d], {a: 1, b: 2, c: 3, d: 1}.keys_of(1)
    assert_equal [:a, :b, :d], {a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2)
  end

  def test_defusing
    assert_equal nil.length == 5, false
    assert_equal nil.reverse == "rubeque", false
  end

  def test_a_man_a_plan
    assert_equal longest_palindrome("xyzzy"), "yzzy"
    assert_equal longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd"), "dhfdkjfffhhfffjkdfhd"
    assert_equal longest_palindrome("bartarcarracecarbartar"), "racecar"
    assert_equal longest_palindrome("3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982"), "46264"
  end

  def test_architecting_a_solution
    flr = Architect.new("frank loyd wright")
    imp = Architect.new("I. M. Pei", ["new college dorms", "jfk library"])

    flr.works = ["Guggenheim", "fallingwater"]

    assert_equal flr.name, "frank loyd wright"
    assert_equal imp.works, ["new college dorms", "jfk library"]
  end

  def test_counting_elements_in_array
    test = ['cat', 'dog', 'fish', 'fish']
    assert_equal ({ 'cat' => 1, 'dog' => 1, 'fish' => 2 }), count(test)
  end

  def test_array_interleave
    assert_equal [1, 3, 5].interleave(2, 4, 6), [1, 2, 3, 4, 5, 6]
    assert_equal [1, 3, 5].interleave([2, 4]), [1, 2, 3, 4, 5]
    assert_equal [1, 3, 5].interleave("2", "4"), [1, "2", 3, "4", 5]
    assert_equal [].interleave(2, 4, 6), [2, 4, 6]
    assert_equal [1, 2, 3].interleave(), [1, 2, 3]
  end

  def test_join_url_params
    url_params = {
      'first_param'  => 123,
      'second_param' => 456,
      'third_param'  => 678
    }

    url = 'http://www.foobar.com'

    assert_equal 'http://www.foobar.com?first_param=123&second_param=456&third_param=678', join_params(url, url_params)
  end

  def test_unidentified_X_object
    assert_equal "X" * ( 2<=>2 ), ""
    assert_equal "X" * ( 2<=>0 ), "X"
  end

  def test_simple_string_substitution
    subject = "?? == ??"

    assert_equal subject.simple_sub("==", "<="), "?? <= ??"
    assert_equal subject.simple_sub("abc", "def"), "?? == ??"
    assert_equal subject.simple_sub("??", "fun??"), "fun?? == fun??"

    naruse_answer = "Date.parse(date.sub(/(\d+)[-\/](\d\d).(\d{4})/,'\\3-\\1-\\2')).strftime('%b %d, %Y')"
    assert_equal subject.simple_sub("??", naruse_answer), "#{naruse_answer} == #{naruse_answer}"
  end

  def test_pack_template_utf_8
    assert_equal [0, 1].pack('U*'), "\000\001"
    assert_equal [0x7f].pack('U*'), "\177"
    assert_equal [0x80].pack('U*'), "\302\200"
    assert_equal "\u3042".unpack('U*'), [0x3042]
    assert_equal "あいうえお".unpack('U*'), [12354, 12356, 12358, 12360, 12362]
    assert_equal [12354, 12356, 12358, 12360, 12362].pack('U*'), "あいうえお"
  end

  def test_easy_select_map
    assert_equal ["1", 2, "3", 4, "5"].grep(/[1-5]/){ |e| e.succ }, ["2", "4", "6"]
    assert_equal [0, 1, 3, 5, 6].grep(1..5, &:succ), [2, 4, 6]
    assert_equal ["1", "2", "3", "4", "5"].grep( -> n { n.to_i.odd? } ) { |e| e.succ }, ["2", "4", "6"]
    assert_equal [1, 2, 3, 4, 5].grep( -> n { n.to_i.odd? }, &:succ), [2, 4, 6]
  end

  def test_an_unconventional_join
    $,='_'
    assert_equal "a_b_c", ["a", "b", "c"].join
    assert_equal "123", [1, 2, 3].join('')
    $,=''
  end

end
