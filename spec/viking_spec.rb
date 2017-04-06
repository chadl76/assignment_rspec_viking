require 'viking'
require 'weapons/axe'

describe Viking do

	let(:viking) { Viking.new("Chad", health = 100)}
  
	describe '#initialize' do

		it 'sets name attribute for new viking' do
			expect(viking.name).to eq("Chad")
		end
    
    it 'passes in health attribute to new viking' do
    	expect(viking.health).to eq(100)
    end

    it 'does not overwrite health attribute after it has been initialized' do
      expect(viking).not_to respond_to(:health=)
    end


	end
end

