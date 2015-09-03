class Calculator
  def add(x, y)
    if x.class != Fixnum || y.class != Fixnum
      return "Error: Please only enter numbers."
    else
      x + y
    end
  end

  def multiply(x, y)
    if x.class != Fixnum || y.class != Fixnum
      return "Error: Please only enter numbers."
    else
      x * y
    end
  end

  def subtract(x,y)
    if x.class != Fixnum || y.class != Fixnum
      return "Error: Please only enter numbers."
    else
      x - y
    end
  end

  def divide(x,y)
    if x.class != Fixnum || y.class != Fixnum
      return "Error: Please only enter numbers."
    elsif y.zero?
      return "Error: Please don't divide by zero."
    else
      x / y
    end
  end
end






















