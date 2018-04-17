require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear.rb'
require_relative '../river.rb'
require_relative '../fish.rb'

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new "Yogi"
    @fish1 = Fish.new "Nemo"
    @fish2 = Fish.new "Dori"
    @river = River.new "Amazon"

    @river.add_fish @fish1
    @river.add_fish @fish2
  end

  def test_get_name
    assert_equal @bear.name, "Yogi"
  end

  def test_roar
    assert_equal "ROAR!!!", @bear.roar
  end

  def test_food_count
    assert_equal 0, @bear.food_count
    @bear.take_fish @river
    assert_equal 1, @bear.food_count
  end

  def test_take_fish__fish_available
    @bear.take_fish @river
    assert_equal 1, @bear.food_count
    assert_equal 1, @river.fish_count
  end

  def test_take_fish__fish_unavailable
    @bear.take_fish @river
    @bear.take_fish @river
    assert_equal 2, @bear.food_count
    assert_equal 0, @river.fish_count
    @bear.take_fish @river
    assert_equal 2, @bear.food_count
    assert_equal 0, @river.fish_count
  end
end
