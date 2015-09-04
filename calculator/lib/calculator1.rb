class Calculator
  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x-y
  end

  def multiply(x, y)
    x*y
  end

  def divide(x, y)
    x / y
  end
end

# Initial hard-coded test
  # calculator = Calculator.new
  # result = calculator.add(1, 1)
  # puts result

# Slightly more advanced, hard-coded test
  # calculator = Calculator.new
  # result = calculator.add(1,2)
  # if result == 3
  #   puts "Addition passed"
  # else
  #   puts "Addition failed"
  # end

# Improved, advanced hard-coded test
  # calculator = Calculator.new
  # result = calculator.add(1,2)
  # if result == 3
  #   print "\033[32m Addition passed \033[0m"
  # else
  #   print "\e[31m Addition failed \e[0m"
  # end

  # result2 = calculator.subtract(2, 1)
  # if result2 == 1
  #   print "\033[32m Subtraction passed \033[0m"
  # else
  #   print "\e[31m Subtraction failed \e[0m"
  # end

# Create 'verify' method to remove duplication
def verify(expected, actual, message)
  if actual == expected
    print "\033[32m #{message} passed \033[0m"
  else
    puts "Expected: #{expected} but got : #{actual} #{message}"
    print "\e[31m #{message} failed \e[0m"
  end
end

calculator = Calculator.new
result = calculator.add(1, 2)
verify(3, result, 'Addition')
result2 = calculator.subtract(2, 1)
verify(1, result2, 'Subtraction')
result3 = calculator.multiply(2, 3)
verify(6, result3, 'Multiplication')
result4 = calculator.divide(6, 2)
verify(3, result4, 'Divide')









