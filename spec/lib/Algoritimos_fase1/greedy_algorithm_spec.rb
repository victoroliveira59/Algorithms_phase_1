require './spec/spec_helper.rb'
require './Algoritimos_fase1/greedy_algorithm.rb'

RSpec.describe 'greedy' do
	it 'Searching the algorithm greedy' do
		input = 150
		received = 75
		expected = [50, 25]

		result = greedy(input, received)
		expect(result).to eq(expected)
	end
end