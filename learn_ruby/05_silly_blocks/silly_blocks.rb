def reverser()
	if block_given?
		a = yield.split(" ").map { |x| x.reverse }
		a.join(" ")
	end
end

def adder(val=1)
	if block_given?
		yield + val
	end
end

def repeater(val=2)
	if block_given?
		val.times {yield}
	end
end