require 'active_decimal'

describe Numeric do
  describe 'numbers getting bigger' do
    it 'lets you count thousands' do
      expect( 3.thousand ).to eq(3000)
    end
    it 'lets you count millions' do
      expect( 5.million ).to eq(5000000)
    end
    it 'lets you count billions' do
      expect( 9.billion ).to eq(9 * 10**9)
    end
    it 'lets you count trillions' do
      expect( 5.3.trillion ).to eq(5.3 * 10**12)
    end
    it 'lets you count even bigger ones' do
      expect( 3.4.googol ).to eq(3.4 * 10**100)
    end
  end
end
