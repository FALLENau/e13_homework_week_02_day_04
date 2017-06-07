require "minitest/autorun"
require "minitest/rg"
require_relative "../car"


class TestCar < MiniTest::Test
  def setup
    @car = Car.new("landcrusier")
  end

  def test_car_has_model
    assert_equal("landcrusier", @car.model)
  end

  def test_car_has_four_wheels
    assert_equal(4, @car.number_of_wheels)
  end

  def test_car_can_start_engine
    assert_equal("Vrrmmm", @car.start_engine())
  end

end
