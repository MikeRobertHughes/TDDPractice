require_relative '../lib/stack'
require_relative '../lib/given_when_then'

describe Stack do
  it 'should push a given item' do
    Given { @stack = Stack.new }

    When { @stack.push(1) }

    Then { expect(@stack.size).to eq(1)}
  end

  it 'should pop from the stack' do
    Given { @stack = Stack.new }

    When { @stack.push(2) }

           expect(@stack.pop).to eq(2)
    Then { expect(@stack.size).to eq(0) }
  end
end
