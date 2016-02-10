def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(vals)
	vals.inject(0,:+)
end

def multiply(a,b,*c)
	p = a*b
	c.each { |i| p *= i }
	p
end

def power(a,b)
	a**b
end

def factorial(n)
	p = 1
	while n > 1 
		p *= n
		n -= 1
	end
	p
end