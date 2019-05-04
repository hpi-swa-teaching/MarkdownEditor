testing-private
isRightFlankingFor: aMarkdownReadStream

	"1 not preceded by whitespace AND"
	"   2a not preceded by punct OR"
	"	2b preceded  by punct and followed by ws or punct"

	| precededByWhitespace precededByPunctuation followedByWhitespaceOrPunctuation |
	precededByWhitespace := self
				isPrecededByAnyOf: self class whitespaceChars 
				in: aMarkdownReadStream.
	precededByPunctuation := self
				isPrecededByAnyOf: self class punctuationChars
				in: aMarkdownReadStream.
	followedByWhitespaceOrPunctuation := self 
				isFollowedByAnyOf: self class punctuationChars , self class whitespaceChars 
				in: aMarkdownReadStream.
	^ precededByWhitespace not
		and: [precededByPunctuation not
				or: [precededByPunctuation
						and: [followedByWhitespaceOrPunctuation]]]