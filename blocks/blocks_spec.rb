require 'minitest/autorun'
require 'minitest/rg'
require_relative 'blocks'

class BlocksTest < MiniTest::Test

  def test_adds_one_to_each_item
    assert_equal([2,3,4], map([1,2,3]){|item| item + 1})
  end

  def test_multiplies_each_item_by_two
    assert_equal([2,4,6], map([1,2,3]){|item| item * 2})
  end

  def test_up_to_you_add
    assert_equal(2, up_to_you {1 + 1})
  end

  def test_up_to_you_say_hello
    assert_equal("Hello", up_to_you {"Hello"})
  end

  def test_up_to_you_say_hello_with_name
    assert_equal("Hello Jarrod", up_to_you {|name| "Hello " + name})
  end

  def test_array_map_add_one
    array = [1,2,3]
    result = array.map do |item|
    item + 1
  end
    assert_equal([2,3,4], result)
  end

  def test_each
      array = [1,2,3]
      result = []
      result = array.each {|item|result << item}
      assert_equal([1,2,3], result)
  end

end
