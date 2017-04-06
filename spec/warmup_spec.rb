require 'warmup'



describe Warmup do

let(:test_warmup) { Warmup.new }

  describe '#gets_shout' do

    it "return string in upcase" do
	    allow(test_warmup).to receive(:gets).and_return('hello')
	    expect(test_warmup.gets_shout).to eq("HELLO")
    end
  end

  describe '#triple_size' do 

  	it 'triples the size of array' do
      array_double = double(size: 6)
  		expect(test_warmup.triple_size(array_double)).to eq(18)
  	end
  end

  describe '#calls_some_methods' do

    it 'calls the upcase method' do
      string = "hello"
      expect(string).to receive(:upcase!)
      test_warmup.calls_some_methods(string)
    end

    it 'calls the reverse method' do
      string = "hello"
      expect(string).to receive(:reverse!)
      test_warmup.calls_some_methods(string)
    end

  end
  

  
end

