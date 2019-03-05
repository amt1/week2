require("minitest/autorun")
require("minitest/rg")

require_relative("../bears")
require_relative("../fish")
require_relative("../rivers")

class RiverTest < MiniTest::Test

  def setup
    @stanley = Fish.new("Stanley")
    @rolf = Fish.new("Rolf")
    @tommy = Fish.new("Tommy")
    @redshirt = Fish.new("Redshirt")
    @river1 = River.new("Amazon", [@stanley, @rolf, @tommy, @redshirt])
    @bear2 = Bear.new("Freddy")
  end # end setup

def test_river_name
  assert_equal("Amazon", @river1.name)
end

def test_river_fish_count
  assert_equal(4, @river1.fish_count())
end

def test_bear_catch_fish
  start_food_count = @bear2.food_count()
  start_river_fish_count = @river1.fish_count()
  @bear2.bear_catch_fish(@river1)
  assert_equal(start_food_count+1, @bear2.food_count)
  assert_equal(start_river_fish_count-1, @river1.fish_count)
end
end # end class
