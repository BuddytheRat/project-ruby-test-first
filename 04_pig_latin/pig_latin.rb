
def translate(sentence)
	words = sentence.split
	words.each_with_index do |word, i|
		first_vowel = word =~ /qu|.*([aeiou].*)/i
		if first_vowel > 0
			words[i] = word[first_vowel..-1] + word[0..first_vowel-1] + "ay"
		else
			words[i] = word + "ay"
		end
	end
	words.join(" ")
end