initialize-release
decideLeftFlankingFor: aMarkdownReadStream

	| followedByWhitespace followedByPunctuation precededByWhitespaceOrPunctuation |
	followedByWhitespace := self
				isFollowedByAnyOf: self whitespaceCharacters
				in: aMarkdownReadStream.
	followedByPunctuation := self
				isFollowedByAnyOf: self punctuationCharacters
				in: aMarkdownReadStream.
	precededByWhitespaceOrPunctuation := self 
				isPrecededByAnyOf: self punctuationCharacters , self whitespaceCharacters
				in: aMarkdownReadStream.
	^ followedByWhitespace not
		and: [followedByPunctuation not
				or: [followedByPunctuation
						and: [precededByWhitespaceOrPunctuation]]]