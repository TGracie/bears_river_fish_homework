require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Frank")

    #Only need 1 for testing purposes!!!

    # @fish2 = Fish.new("Spufert")
    # @fish3 = Fish.new("Boink")
    # @fish4 = Fish.new("Crimple")
    # @fish5 = Fish.new("Beef")
  end

 def test_fish_has_name()
   assert_equal("Frank", @fish1.name)
 end

end
