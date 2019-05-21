initialize-release
decideLeftFlankingFor: aMarkdownReadStream

	| followedByWhitespace followedByPunctuation precededByWhitespaceOrPunctuation |
	followedByWhitespace := self
				isFollowedByAnyOf: self class whitespaceChars
				in: aMarkdownReadStream.
	followedByPunctuation := self
				isFollowedByAnyOf: self class punctuationChars
				in: aMarkdownReadStream.
	precededByWhitespaceOrPunctuation := self 
				isPrecededByAnyOf: self class punctuationChars , self class whitespaceChars 
				in: aMarkdownReadStream.
	^ followedByWhitespace not
		and: [followedByPunctuation not
				or: [followedByPunctuation
						and: [precededByWhitespaceOrPunctuation]]]