class StringCalculator 
	def initialize
		@delimiter = nil
		@regex = Regexp.new(/,|\n/)
		@negatives = "negative numbers not allowed"
	end

	def add(cadena)
		return 0 if cadena.empty?
		/^\/\/(?<delimiter>.)\n/.match(cadena) {|m| @delimiter = m[:delimiter] }
		@regex = @delimiter.empty? ? "\n" : @delimiter if @delimiter
		cadena.split(@regex).inject{|sum, n| return @negatives if n.to_i < 0; sum.to_i + n.to_i} 
	end
end
