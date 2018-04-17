class Bear
  attr_reader :name

  def initialize name
    @name, @stomach = name, []
  end

  def roar
    "ROAR!!!"
  end

  def food_count
    @stomach.count
  end

  def take_fish river
    fish = river.get_fish
    return if !fish
    river.remove_fish fish
    @stomach << fish
  end
end
