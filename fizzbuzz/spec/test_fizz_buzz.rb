require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/fizz_buzz'

class TestFizzBuzz < MiniTest::Test
  def test_generate_numbers_from_1_to_100
    game = FizzBuzz.new

    result = game.numbers

    assert_equal((1..100).to_a, result)
  end

  def test_generate_fizz_for_multiples_of_3
    game = FizzBuzz.new

    result = game.transform(3)

    assert_equal('Fizz', result)
  end

  def test_generate_buzz_for_multiples_of_5
    game = FizzBuzz.new

    result = game.transform(5)

    assert_equal('Buzz', result)
  end

  def test_generate_fizzbuzz_for_multiples_of_3_and_5
    game = FizzBuzz.new

    result = game.transform(15)

    assert_equal('FizzBuzz', result)
  end

  def test_generate_number_is_not_multiple
    game = FizzBuzz.new

    result = game.transform(1)

    assert_equal(1, result)
  end
end




















