require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river.rb'
require_relative '../fish.rb'

class RiverTest < MiniTest::Test

  def setup
    @river = River.new "Amazon"
    @fish1 = Fish.new "Nemo"
    @fish2 = Fish.new "Dori"
  end

  def test_get_name
    assert_equal "Amazon", @river.name
  end

  def test_fish_count
    assert_equal 0, @river.fish_count
    @river.add_fish @fish1
    assert_equal 1, @river.fish_count
  end

  def test_add_fish
    @river.add_fish @fish1
    @river.add_fish @fish2
    assert_equal 2, @river.fish_count
  end

  def test_remove_fish__fish_exists
    @river.add_fish @fish1
    @river.remove_fish @fish1
    assert_equal 0, @river.fish_count
  end

  def test_remove_fish__fish_doesnt_exist
    @river.add_fish @fish1
    @river.remove_fish @fish2
    assert_equal 1, @river.fish_count
  end

end
