class Book
	attr_accessor :title

	def titleize(word)
		words = word.split(" ")
		littleWords = ["of", "the", "and", "over", "in", "a", "an"]
		words.each do |word|
			if not (littleWords.include? word)
				word.capitalize!
			end
		end
		words.first.capitalize!
		words.join(" ")
	end

	def title=(title)
		@title = titleize(title)
	end
end