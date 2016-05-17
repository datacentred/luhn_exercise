require 'test_helper'

class TestLuhnCheck < Minitest::Test
  def setup
    @valid   = [2121, 1230, 4111111111111111, 26, 2626262626262626, 91, 912030]
    @invalid = [123, 1, 8675309, 92, 922030, 111111111111111111111111]
  end

  def test_something
    flunk
  end
end