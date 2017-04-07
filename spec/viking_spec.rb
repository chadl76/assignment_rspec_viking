require 'viking'
require 'weapons/axe'

describe Viking do

	let(:viking) { Viking.new("Chad", health = 100) }
	let(:thor) { Viking.new("Thor", health = 100 )}
	let(:axe) { Weapon.new("Axe") }
  
	describe '#initialize' do

		it 'sets name attribute for new viking' do
			expect(viking.name).to eq("Chad")
		end
    
    it 'passes in health attribute to new viking' do
    	expect(viking.health).to eq(100)
    end

    it 'does not overwrite health attribute after it has been initialized' do
      expect(viking.health).not_to respond_to(:health=)
    end

    it 'expects weapon to be initialized to nil' do 
    	expect(viking.weapon).to eq(nil)
    end
  end

  describe '#pick_up_weapon' do

  	it 'raises error when picking up non-weapon' do
  		expect{viking.pick_up_weapon("hello")}.to raise_error(Exception)
  	end

  	it 'should set vikings weapon' do
  	  viking.pick_up_weapon(axe)
  	  expect(viking.weapon).to eq(axe)
    end
  end

  describe '#drop_weapon' do 

  	it 'should set weapon to nil' do 
  		viking.drop_weapon
  		expect(viking.drop_weapon).to eq(nil)
  	end
  end

  describe '#receive_attack' do

  	it 'should reduce vikings health by specified ammount' do
  		viking.receive_attack(10)
  		expect(viking.health).to eq(90)
  	end

  	it 'should call the take_damage method' do 
  		expect(viking).to receive(:take_damage)
  		viking.receive_attack(10)
  	end
  end

  describe '#attack' do

  	it 'should cause another viking health to drop' do
  	end
  end


end

