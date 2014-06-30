require 'algos/inversion/inversion_counter'

describe Algos::Inversion::InversionCounter do

  describe 'count_inversions' do

    it 'should count the number of inversions in an array' do
      ary = [4,3,2,1]
      result = Algos::Inversion::InversionCounter.count_inversions(ary)
      expect(result).to eq(6)
    end

    it 'should count the number of inversions in an array' do
      ary = [2,1]
      result = Algos::Inversion::InversionCounter.count_inversions(ary)
      expect(result).to eq(1)
    end

    it 'should count the number of inversions in an array' do
      ary = [3,2,1]
      result = Algos::Inversion::InversionCounter.count_inversions(ary)
      expect(result).to eq(3)
    end

    it 'should count the number of inversions in an array' do
      ary = [1,3,5,2,4,6]
      result = Algos::Inversion::InversionCounter.count_inversions(ary)
      expect(result).to eq(3)
    end

    it 'should help me solve my homework assignment' do
      ary = IO.readlines('./spec/text_files/IntegerArray.txt').map { |x| x.strip.to_i }
      result = Algos::Inversion::InversionCounter.count_inversions(ary)
      expect(result).to eq(2407905288)
    end

  end
  
end