require "minitest/autorun"
require "minitest/rg"
require_relative "../motorbike"


class TestMotorbike < MiniTest::Test
    def setup
      @motorbike = Motorbike.new()

    end

    def test_motorbike_can_start_engine
      assert_equal("Vrrmmm (I'm a motorbike), HELL YEAH!", @motorbike.start_engine())

    end #Note: test are almost always just the output, only the line before assert_equal is input.

end
