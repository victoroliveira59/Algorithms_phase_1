require './spec/spec_helper'
require './Algoritimos_fase2/jump_search.rb'


RSpec.describe JumpSearch do
	context 'jump and linear search' do
		it 'when the number to be searched is not in the list' do
			array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 925, 980, 999]
			x = 625
			intance = JumpSearch.new
			expect(intance.jump(array, x)).to_not be_nil
		end

		it 'when the desired number is in an odd position' do
			array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 925, 980, 999]
			x = 34
			intance = JumpSearch.new
			expect(intance.jump(array, x)).to eq(9)
		end

		it 'quando o numero é o ultimo da lista' do
			array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 925, 980, 999]
			x = 999
			intance = JumpSearch.new
			expect(intance.jump(array, x)).to eq(18)
		end
	end
end

