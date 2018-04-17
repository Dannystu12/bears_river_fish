class River
  attr_reader :name

  def initialize name
    @name, @fish = name, []
  end

  def fish_count
    @fish.count
  end

  def add_fish fish
    @fish << fish
  end

  def remove_fish fish
    @fish.delete fish
  end
end
