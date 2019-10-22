require ('minitest/autorun')
require ('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Xobek", "Polar")
    @bear2 = Bear.new("Bill", "Grizzly")
    @fishy1 = Fish.new("Salmon")
    @fishy2 = Fish.new("Trout")
    @fishy3 = Fish.new("Bass")
    @river1 = River.new("Tay", [@fishy1, @fishy2, @fishy3, @fishy1])
  end

  def test_check_name()
    assert_equal("Xobek", @bear1.name())
  end

  def test_check_type()
    assert_equal("Grizzly", @bear2.type())
  end

  def test_food_count
    assert_equal(0, @bear2.food_count())
  end

  def test_roar
    assert_equal("RAWWR", @bear1.roar())
  end

  def test_take_fish_from_river()
    @bear1.take_fish_from_river(@river1)
    assert_equal(3, @river1.fish_count())
    assert_equal(1, @bear1.food_count())
  end



end
