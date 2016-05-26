require "./lib/RubyToPython.rb"
require "test/unit"

class TestRubyToPython < Test::Unit::TestCase

    def test_sample
        assert_equal(4, 2+2)
    end

end