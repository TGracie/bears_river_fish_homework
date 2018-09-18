require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb") #tested already
require_relative("../bears.rb") #tested already
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", [@fish2, @fish3, @fish4, @fish5])

    @fish1 = Fish.new("Frank")

    @fish2 = Fish.new("Spufert")
    @fish3 = Fish.new("Boink")
    @fish4 = Fish.new("Crimple")
    @fish5 = Fish.new("Beef")

    @shoal = [@fish2, @fish3, @fish4, @fish5]


  end

  def test_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_stock_count
    stock = @river.stock
    assert_equal(4, stock.count)
  end

  def test_add_fish_to_river
    fish = @fish1
    @river.add_fish(fish)
    river_stock = @river.stock.count
    assert_equal(5, river_stock)
  end

  def test_bear_eats_fish
    otis = Bear.new("Otis", "Grizzly")
    otis.eat(@fish1)
    assert_equal(3, @river.stock.count)
  end



end
