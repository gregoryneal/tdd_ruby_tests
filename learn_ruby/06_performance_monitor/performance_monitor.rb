def measure()
	if block_given?
		a = Time.now
		yield
		a - Time.now
	end 
end