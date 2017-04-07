require 'viking'
require 'weapons/bow'

describe Bow do 
	let(:bow) { Bow.new}

	describe '#initialize' do 

		it 'should start with 10 arrows by default' do 
			expect(bow.arrows).to eq(10)
		end
    
    it 'should reduce arrow count by one when used' do
    	bow.use
    	expect(bow.arrows).to eq(9)
    end

    it 'should throw an error if bow use arrow with zero arrows'  do
    	bow = Bow.new(0)
    	bow.use
    	expect(bow.use).to raise_error("Zero arrows left")
    end 
  end
end