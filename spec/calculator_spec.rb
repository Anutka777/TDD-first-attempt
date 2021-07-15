# frozen_string_literal: true

require './lib/calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      expect(subject.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      expect(subject.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#substruct' do
    it 'returns the substruction of first number minus another' do
      expect(subject.substruct(12, 7)).to eql(5)
    end

    it 'returns the substraction of several numbers' do
      expect(subject.substruct(12, 7, 3)).to eql(2)
    end

    it 'returns the substraction result <= 0' do
      expect(subject.substruct(12, 7, 7)).to eql(-2)
    end
  end

  describe '#multiplication' do
    it 'returns multiplication of several multiples' do
      expect(subject.multiplication(2, 5, 67)).to eql(670)
    end

    it 'returns multiplication of multiples with different signs' do
      expect(subject.multiplication(3, -3, 6)).to eql(-54)
    end
  end

  describe '#division' do
    it 'returns division result of several itegers' do
      expect(subject.division(81, 9, 3)).to eql(3)
    end

    it 'returns the whole part of result if it\'s division with the remainder' do
      expect(subject.division(81, 7, 2)).to eql(5)
    end

    it 'gives a warnining if one or more arguments is not an integer' do
      expect(subject.division(1.2, 3, 1)).to eql('ERROR: all arguments should be integers.')
    end

    it 'gives a warning if trying to divide on 0' do
      expect(subject.division(7, 0, 4)).to eql('ERROR: division on 0.')
    end

    it 'correctly returns result if 0 is a dividend' do
      expect(subject.division(0, 9, 5)).to eql(0)
    end
  end
end
