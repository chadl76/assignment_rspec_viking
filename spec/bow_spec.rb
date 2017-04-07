require 'viking'
require 'weapons/bow'

describe Bow do 
	let(:bow) { Bow.new}

	describe '#initialize' do 

		it 'should start with 10 arrows by default' do 
			expect(bow.arrows).to eq(10)
		end
    
    it 'should reduce arrow count by one when used' do 
    	expect(bow.use).to eq(arrows -= 1)
    end 

	end

end