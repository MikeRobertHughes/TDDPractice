require 'minitest/autorun'
require 'minitest/pride'
require_relative 'calculator'
require_relative 'aaa'

class TestCalculator < MiniTest::Test

  def test_addition
    Given {@calculator = Calculator.new}

    When {@result = @calculator.add(3,2)}

    Then {assert_equal(5, @result)}
  end

  def test_subtraction
    Given {@calculator = Calculator.new}

    When {@result = @calculator.subtract(3, 2)}

    Then {assert_equal(1, @result)}
  end

  def test_multiplication
    Given {@calculator = Calculator.new}

    When {@result = @calculator.multiply(3, 2)}

    Then {assert_equal(6, @result)}
  end

  def test_division
    Given {@calculator = Calculator.new}

    When {@result = @calculator.divide(6, 2)}

    Then {assert_equal(3, @result)}
  end
end









