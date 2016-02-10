class Book
	attr_accessor :title

	def title=(new_title)
		words = new_title.split(" ")
		i = 0
		words.each do |word|
			do_not_capitalize = ["the","a","an","and","in","of"]
			if (i == 0 || !do_not_capitalize.include?(word))
				word.capitalize!
			end
			i += 1
		end
		@title = words.join(" ")
	end
end