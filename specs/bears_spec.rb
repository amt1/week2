require("minitest/autorun")
require("minitest/rg")

require_relative("../bears")

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Rolf")
  end # end setup

def test_bear_name
  assert_equal("Rolf", @bear1.name)
end

def test_bear_roar
  assert_equal("Roar!", @bear1.roar())
end

def test_bear_food_count
  assert_equal(0, @bear1.food_count())
end



end # end class
