require_relative 'calculator'

describe Calculator do

  it 'should not accept strings as input' do
    calculator = Calculator.new

    result = calculator.add("1", "hi")

    expect(result).to eq("Error: Please only enter numbers.")
  end

  it 'should add given two numbers' do
    calculator = Calculator.new

    result = calculator.add(1,2)

    expect(result).to eq(3)
  end

  it 'should multiply given two numbers' do
    calculator = Calculator.new

    result = calculator.multiply(2,3)

    expect(result).to eq(6)
  end

  it 'should subtract given two numbers' do
    calculator = Calculator.new

    result = calculator.subtract(2,1)

    expect(result).to eq(1)
  end

  it 'should divide given two numbers' do
    calculator = Calculator.new

    result = calculator.divide(6,3)

    expect(result).to eq(2)
  end

  it 'should not allow divide by zero' do
    calculator = Calculator.new

    result = calculator.divide(2,0)

    expect(result).to eq("Error: Please don't divide by zero.")
  end
end

























