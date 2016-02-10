class Timer
	attr_accessor :seconds
	attr_reader :time_string

	def initialize()
		@seconds = 0
		format_time_string
	end

	def seconds=(new_seconds)
		@seconds = new_seconds
		format_time_string
	end

	def format_time_string()
		hr = (@seconds/3600.0).floor
		mn = ((@seconds-(3600.0*hr))/60.0).floor
		sc = @seconds % 60
		hr = hr < 10 ? "0#{hr}" : hr
		mn = mn < 10 ? "0#{mn}" : mn
		sc = sc < 10 ? "0#{sc}" : sc
		@time_string = "#{hr}:#{mn}:#{sc}"
	end
end