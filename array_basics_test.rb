require 'minitest/autorun'
require 'minitest/pride'
require_relative 'array_basics'

class SimpleArrayTest < Minitest::Test

  def array
    @array
  end

  def setup
    @array = SimpleArray.new(['a' ,'b' ,'c'])
  end

  def test_it_can_implement_first
    assert_equal "a", @array.first_new
  end

  def test_it_can_implement_last
    assert_equal "c", @array.last_new
  end

  def test_it_can_implement_join
    assert_equal "a-b-c", @array.join_new('-')
  end

  def test_it_can_implement_count
    assert_equal 3, @array.count_new
  end

end
