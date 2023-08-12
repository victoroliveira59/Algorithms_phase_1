require 'spec_helper'
require './Resolvendo_problemas/array_reversal.rb'

describe array_reversal do
	context "testing algorithms fase 01" do
		it "testing algorithm reversal" do
			expect(array_reversal[1,2,3,4,5,6,7,8,9,10].to eq ['8,9,10,1,2,3,4,5,6,7'])
		end
	end
end