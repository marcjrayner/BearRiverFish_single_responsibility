class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.count()
  end

  def roar
    return "RAWWR"
  end

  def take_fish_from_river(river)
    @stomach << river.lose_fish()
  end



end
