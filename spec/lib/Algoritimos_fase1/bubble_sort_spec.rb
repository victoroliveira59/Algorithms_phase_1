require_relative '../../../spec/spec_helper'
require './Algoritimos_fase1/bubble_sort.rb'

<<<<<<< HEAD

RSpec.describe Bublle_sort do
	describe '#bubbe_sort' do
		it 'sorts an unsorted list' do
			unsorted_list = [9, 2, 6, 3, 7, 1, -3, -8]
			sorted_list = [-8, -3, 1, 2, 3, 6, 7, 9]
			instance = Bublle_sort.new
			expect(instance.bubbe_sort(unsorted_list)).to eq(sorted_list)
		end

		it 'handles an already sorted list' do
			sorted_list = [-8, -3, 1, 2, 3, 6, 7, 9]
			instance = Bublle_sort.new
			expect(instance.bubbe_sort(sorted_list)).to eq(sorted_list)
		end
	end
end

=======
RSpec.describe Bublle_sort do
	context "when using bubble sort algorithm" do
		it "sorts the array correctly" do
			bubble_sort = Bublle_sort.new

			lista = [9, 2, 6, 3, 7, 1, -3, -8]
			ordenation = [-8, -3, 1, 2, 3, 6, 7, 9]

			expect(lista).to eq(ordenation)
		end
	end
end
>>>>>>> origin/main
