require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Stanley")
  end # end setup

def test_fish_name
  assert_equal("Stanley", @fish1.name)
end
end # end class
