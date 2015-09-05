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

    result = game.sequence

    assert_equal('Fizz', result[2])
  end

  def test_generate_buzz_for_multiples_of_5
    game = FizzBuzz.new

    result = game.sequence

    assert_equal('Buzz', result[4])
  end

  def test_generate_fizzbuzz_for_multiples_of_3_and_5
    game = FizzBuzz.new

    result = game.sequence

    assert_equal('FizzBuzz', result[14])
  end
end
