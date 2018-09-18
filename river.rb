class River

  attr_reader :name
  attr_accessor :stock

  def initialize(name, shoal)
    @name = name
    @stock = shoal
  end

  def add_fish(fish)
    @stock << fish
  end

  def bear_eats(fish)
    for snack in @stock
      if @bear.eat(fish)
        @stock.delete(fish)
      end
    end
     p @stock
  end

end
