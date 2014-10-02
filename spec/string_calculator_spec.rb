require './string_calculator'
RSpec.describe StringCalculator do
	let(:string_calculator) { StringCalculator.new } 
	it "receive an empty string should return zero" do
		expect(string_calculator.add("")).to eq(0)
	end

	it "receive an string with number divide by comma sum and return total" do
		expect(string_calculator.add("1,2,3")).to eq(6)
	end

end
