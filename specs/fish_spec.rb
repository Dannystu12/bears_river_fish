require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish.rb'

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new "Nemo"
  end

  def test_get_fish_name
    assert_equal "Nemo", @fish.name
  end
end
