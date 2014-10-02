class StringCalculator 
	def add(cadena)
		return 0 if cadena.empty?
		cadena.split(',').inject{|sum, n| sum.to_i + n.to_i}
	end
end
