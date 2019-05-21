initialize-release
decideRightFlankingFor: aMarkdownReadStream

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