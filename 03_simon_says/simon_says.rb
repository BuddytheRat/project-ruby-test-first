def echo(echo)
	echo
end
def shout(echo)
	echo.upcase
end
def repeat(echo, numTimes = 2)
	((echo + " ") * numTimes).rstrip
end
def start_of_word(word, letters)
	word[0..letters-1]
end
def first_word(word)
	word.split[0]
end
def titleize(word)
	words = word.split
	littleWords = ["of", "the", "and", "over"]
	words.each do |word|
		if not (littleWords.any?{ |i| i[word] })
			word.capitalize!
		end
	end 
	words.first.capitalize!
	words.join(" ")
end