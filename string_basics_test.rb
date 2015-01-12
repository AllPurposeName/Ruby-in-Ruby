require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string_basics'

class SimpleStringTest < Minitest::Test

  def string
    @string
  end

  def setup
    @string = SimpleString.new('abc')
  end

  def test_it_can_implement_length
    a_string = SimpleString.new("hello")
    assert_equal 5, a_string.length_new
    second_string = SimpleString.new("")
    assert_equal 0, second_string.length_new
  end

  def test_it_can_implement_end_with
    a_string = SimpleString.new("hello")
    assert a_string.end_with_new?("o")
    refute a_string.end_with_new?("x")
    assert a_string.end_with_new?("ello")
    refute a_string.end_with_new?("ell")
    refute a_string.end_with_new?("yllo")
  end

  def test_it_can_implement_upcase
    a_string = SimpleString.new("hello")
    second_string = SimpleString.new("BYE")
    third_string = SimpleString.new("")
    fourth_string = SimpleString.new("CamelCase")
    fifth_string = SimpleString.new("An actual sentence.")
    assert_equal "HELLO", a_string.upcase_new
    assert_equal "BYE", second_string.upcase_new
    assert_equal "", third_string.upcase_new
    assert_equal "CAMELCASE", fourth_string.upcase_new
    assert_equal "AN ACTUAL SENTENCE.", fifth_string.upcase_new
  end

  def test_it_can_implement_lowercase
    b_string = SimpleString.new("HELLO")
    b_second_string = SimpleString.new("bye")
    b_third_string = SimpleString.new("")
    b_fourth_string = SimpleString.new("CamelCase")
    b_fifth_string = SimpleString.new("An actual sentence.")
    assert_equal "hello", b_string.lowercase_new
    assert_equal "bye", b_second_string.lowercase_new
    assert_equal "", b_third_string.lowercase_new
    assert_equal "camelcase", b_fourth_string.lowercase_new
    assert_equal "an actual sentence.", b_fifth_string.lowercase_new
  end


  def test_it_can_implement_plus
    a_string = SimpleString.new("hello")
    second_string = SimpleString.new("BYE")
    assert "helloBYE", a_string.plus(second_string)
  end

end
