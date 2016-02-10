def remove_first_consonant(word)
	vowels = ["a","e","i","o","u","y"]
	i = 0
	word.each_char do |letter|
		if vowels.include?(letter.downcase)
			break
		end
		i += 1
	end
	if (word[i-1] == "q" && word[i] == "u")
		i += 1
	end
	word[i..-1]
end

def translate(sentence)
	words = sentence.split(" ")
	words.map! do |word|
		a = remove_first_consonant(word)
		if word.downcase == a.downcase
			word << "ay"
		else
			a << word[0...word.length-a.length] << "ay"
		end
	end
	words.join(" ")
end