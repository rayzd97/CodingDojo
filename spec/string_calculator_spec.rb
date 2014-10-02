require './string_calculator'
RSpec.describe StringCalculator do
	let(:string_calculator) { StringCalculator.new } 
	it "receive an empty string should return zero" do
		expect(string_calculator.add("")).to eq(0)
	end

end
