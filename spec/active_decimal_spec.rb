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

  describe 'numbers getting smaller' do
    it 'lets you make quarters' do
      expect( 1.fourth ).to eq( 0.25 )
      expect( 1.quarter ).to eq( 0.25 )
    end
    it 'lets you make teen fractions' do
      expect( 1.fifteenth ).to eq( 1.0 / 15 )
      expect( 1.sixteenth ).to eq( 1.0 / 16 )
    end
    it 'does not let you make grammar errors' do
      expect{ 4.sixteenth }.to raise_error ActiveDecimal::BadGrammar
      expect{ 9.half }.to raise_error ActiveDecimal::BadGrammar
      expect{ 1.fourths }.to raise_error ActiveDecimal::BadGrammar
      expect{ 1.hundredths }.to raise_error ActiveDecimal::BadGrammar
    end
    it 'lets you make plural fractions' do
      expect( 5.fourths ).to eq( 1.25 )
      expect( 8.halves ).to eq( 4 )
    end
  end

  describe 'math masturbation' do
    it 'is commutative' do
      expect( 4.million.fifths ).to eq( 4.fifths.million )
      expect( 6.9.billion.trillion ).to eq( 6.9.trillion.billion )
    end
    it 'is distributive' do
      expect( 4.billion + 5.billion ).to eq( (4+5).billion )
      expect( 5.fourths - 8.fourths ).to eq( (5-8).fourths )
    end
  end
end
