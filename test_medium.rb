require 'minitest/autorun'
require 'minitest/pride'

require './medium'

class RubequeTest < Minitest::Test

  def test_pigs_fly
    assert_equal do_pigs_fly?, false
  end

end
