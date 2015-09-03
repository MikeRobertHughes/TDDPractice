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









