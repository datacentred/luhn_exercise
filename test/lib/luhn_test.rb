require 'test_helper'

class TestLuhnCheck < Minitest::Test
  def setup
    @valid   = [2121, 1230, 4111111111111111, 26,
                2626262626262626, 91, 912030]

    @invalid = [123, 1, 8675309, 92, 922030,
                111111111111111111111111]
  end

  def test_whether_odd_or_even
    assert LuhnCheck.odd?(233)
    refute LuhnCheck.odd?(23)
  end

  def test_whether_odd_number_times_by_two
    assert_equal [1, 4, 3], LuhnCheck.doubled_up_array(123)
    assert_equal [2, 8, 8], LuhnCheck.doubled_up_array(248)
  end
end