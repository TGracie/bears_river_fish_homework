require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb") #tested already
require_relative("../river.rb")
require_relative("../bears.rb") #tested already

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Cartoon")
    @bear2 = Bear.new("Otis", "Grizzly")
    @bear3 = Bear.new("Borf", "Polar")

    @fish2 = Fish.new("Spufert")
    @fish3 = Fish.new("Boink")
    @fish4 = Fish.new("Crimple")
    @fish5 = Fish.new("Beef")

  end

  def test_bear_has_name()
    assert_equal("Otis", @bear2.name)
  end

  def test_bear_has_species()
    assert_equal("Cartoon", @bear1.species)
  end

  def test_fish_in_stomach()
    bear_tum = @bear3.stomach.count
    assert_equal(0, bear_tum)
  end

  def test_bear_can_eat()
    fish = @fish1
    stomach = @bear3.stomach
    bear_catch_fish = @bear3.eat(fish)
    assert_equal(1, stomach.count)
  end

  def test_bear_can_roar
    assert_equal("Bear say rawr!", @bear1.roar)
  end


end
