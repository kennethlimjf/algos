require 'algos'

describe Algos::Sort::MergeSort do
  
  describe 'sort' do
    it 'sorts an unsorted array into an array using marge sort algorithm' do
      unsorted_ary = [5,2,1,4,6,7,9,3,8]
      sorted_ary = Algos::Sort::MergeSort.sort(unsorted_ary)
      expect(sorted_ary).to eq([1,2,3,4,5,6,7,8,9])
    end

    it 'returns the array with identical number elements' do
      unsorted_ary = [5,5,5,5,5]
      sorted_ary = Algos::Sort::MergeSort.sort(unsorted_ary)
      expect(sorted_ary).to eq([5,5,5,5,5])
    end

    it 'sorts an array with duplicated value numbers' do
      unsorted_ary = [5,2,1,4,6,7,8,3,8]
      sorted_ary = Algos::Sort::MergeSort.sort(unsorted_ary)
      expect(sorted_ary).to eq([1,2,3,4,5,6,7,8,8])
    end
  end

end