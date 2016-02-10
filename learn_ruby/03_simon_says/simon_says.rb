def echo(n)
	n
end

def shout(n)
	n.upcase
end

def repeat(a,n=2)
	s = a << " "
	(s*n).strip!
end

def start_of_word(a,n)
	a[0...n]
end

def first_word(a)
	a.split(" ")[0]
end

def last_word(a)
	a.split(" ")[-1]
end

def titleize(a)
	b = a.split(" ")
	do_not_cap = ["over", "the", "a", "an", "and", "for", "it"]
	b.length.times do |i|
		if (i == 0 || i == b.length)
			b[i].capitalize!
		else
			b[i].capitalize! unless do_not_cap.include?(b[i].downcase)
		end
	end
	b.join(" ")
end