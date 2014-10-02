class StringCalculator 
	def initialize
		@delimiter = nil
		@regex = Regexp.new(/,|\n/)
	end

	def add(cadena)
		return 0 if cadena.empty?
		/^\/\/(?<delimiter>.)\n/.match(cadena) {|m| @delimiter = m[:delimiter] }
		@regex = @delimiter.empty? ? "\n" : @delimiter if @delimiter
		cadena.split(@regex).inject{|sum, n| sum.to_i + n.to_i}
	end
end
