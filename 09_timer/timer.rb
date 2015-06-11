class Timer
	attr_accessor :seconds, :modulus
	def initialize
		@seconds = 0
		@modulus = 60
	end
	def time_string()
		hours = padded((@seconds / 3600) %60)
		minutes = padded((@seconds / 60) %60)
		seconds = padded(@seconds % @modulus)
		t_string = "#{hours}:#{minutes}:#{seconds}"
		return t_string
	end
	def padded(num)
		num.to_s.rjust(2, '0')
	end

end