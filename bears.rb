class Bear

  attr_reader :name, :species
  attr_accessor :stomach

  def initialize(name, species)
    @name = name
    @species = species
    @stomach = []
  end

  def eat(fish)
    @stomach << fish
    # @river_stock.pop(fish)
  end

  def roar
    return "Bear say rawr!"
  end

end
