class StringCalculator 
	def initialize
		@delimiter = nil
		@regex = regex(/,|\n/)
		@negatives = "negative numbers not allowed"
	end

	def add(cadena)
		return 0 if cadena.empty?
		regex('^\/\/(?<delimiter>.|\s)\n').match(cadena) {|m| @delimiter = m[:delimiter] }
		@regex = regex(@delimiter) if @delimiter
		cadena.split(@regex).inject{|sum, n| return @negatives if n.to_i < 0; sum.to_i + n.to_i} 
	end

	private
		def regex(str)
			Regexp.new(str)
		end
end
