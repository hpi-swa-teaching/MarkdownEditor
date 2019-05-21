initialize-release
decideRightFlankingFor: aMarkdownReadStream

	| precededByWhitespace precededByPunctuation followedByWhitespaceOrPunctuation |
	precededByWhitespace := self
				isPrecededByAnyOf: self whitespaceCharacters
				in: aMarkdownReadStream.
	precededByPunctuation := self
				isPrecededByAnyOf: self punctuationCharacters
				in: aMarkdownReadStream.
	followedByWhitespaceOrPunctuation := self 
				isFollowedByAnyOf: self punctuationCharacters , self whitespaceCharacters
				in: aMarkdownReadStream.
	^ precededByWhitespace not
		and: [precededByPunctuation not
				or: [precededByPunctuation
						and: [followedByWhitespaceOrPunctuation]]]