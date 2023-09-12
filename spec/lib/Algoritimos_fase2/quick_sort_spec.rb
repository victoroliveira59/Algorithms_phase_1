require './Algoritimos_fase2/quick_sort.rb'
require './spec/spec_helper.rb'

RSpec.describe QuickSort do
	it 'Se o array original não for comparado com ele mesmo o valor esperado vai ser nil ' do
		instance = QuickSort.new
		sorted  = [10,6,2,5,8]
		expect(instance.quicksort(sorted, 0, sorted.length - 1)).to eq(nil)
	end
	it 'The expected value must be compared with the original array ' do
		sorted  = [10,6,2,5,8]
		expected = [2,5,6,8,10]
		QuickSort.new.quicksort(sorted, 0, sorted.length - 1)
		expect(sorted).to eq(expected)
	end
	it 'Test quick sort with repeated numbers no array' do
		sorted  = [6,3,8,4,5,20,6,4,7,2]
		expected = [2, 3, 4, 4, 5, 6, 6, 7, 8, 20]
		QuickSort.new.quicksort(sorted, 0, sorted.length - 1)
		expect(sorted).to eq(expected)
	end
	it 'Test quick sort with negative numbers no array' do
		sorted  = [-6,3,8,-4,5,20,6,4,-7,2]
		expected = [-7, -6, -4, 2, 3, 4, 5, 6, 8, 20]
		QuickSort.new.quicksort(sorted, 0, sorted.length - 1)
		expect(sorted).to eq(expected)
	end
end
