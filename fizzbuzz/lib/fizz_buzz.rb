# Required because of 'No if-else' constraint
  # require_relative 'fizz_buzz_engine'

# Required because of 'No if' constraint
require_relative 'fixnum_extensions'

class FizzBuzz
  using FixnumExtensions
  def numbers
    (1..100).to_a
  end

# Original implentation of Fizz Buzz Kata
  # def sequence
  #   numbers.collect do |x|
  #     if multiple_of(3, x) && multiple_of(5, x)
  #       'FizzBuzz'
  #     elsif multiple_of(3, x)
  #       'Fizz'
  #     elsif multiple_of(5, x)
  #       'Buzz'
  #     else
  #       x
  #     end
  #   end
  # end

# No if-else contstraint on Fizz Buzz Kata
  # def sequence
  #   numbers.collect do |x|
  #     fbe = FizzBuzzEngine.new(x)
  #     fbe.value
  #   end
  # end

  def sequence
    numbers.collect do |x|
      x.fizz_buzz
    end
  end

  def transform(n)
    sequence[n - 1]
  end

  private

  def multiple_of(n, x)
    x % n == 0
  end
end





















