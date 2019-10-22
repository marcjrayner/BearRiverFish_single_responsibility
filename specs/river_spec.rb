require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class PetShopTest < MiniTest::Test

  def setup()
    @river1 = River.new("Tay", [@fishy1, @fishy2, @fishy1, @fishy2])
    @fishy1 = Fish.new("Salmon")
    @fishy2 = Fish.new("Trout")
  end

  def test_check_river_name()
    assert_equal("Tay", @river1.name())
  end

  def test_fish_count
    assert_equal(4, @river1.fish_count())
  end

  def test_lose_fish
    @river1.lose_fish()
    assert_equal(3, @river1.fish_count())
  end

end
