require './string_calculator'
RSpec.describe StringCalculator do
	let(:string_calculator) { StringCalculator.new } 
	it "receive an empty string should return zero" do
		expect(string_calculator.add("")).to eq(0)
	end

	it "receive an string with number delimiter by comma sum and return total" do
		expect(string_calculator.add("1,2,3")).to eq(6)
	end

	it "receive an string with with numbers delimiter by \n sum and return total" do
		expect(string_calculator.add("1\n2\n3")).to eq(6)
	end

	it "receive an string with numbers and custom delimiter" do
		expect(string_calculator.add("//;\n1;2;3")).to eq(6)
	end

	it "negative numbers should not allowed" do
		expect(string_calculator.add("//;\n1;-2;3")).to eq("negative numbers not allowed")
	end
	
	it "allow double whitespace one for custom delimiter" do
		expect(string_calculator.add("//\n\n1\n2\n3")).to eq(6)
	end

end
