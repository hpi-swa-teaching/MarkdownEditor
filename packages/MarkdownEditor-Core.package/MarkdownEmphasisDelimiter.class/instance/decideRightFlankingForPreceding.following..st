initialize-release
decideRightFlankingForPreceding: precedingCharacter following: followingCharacter

	| precededByWhitespace precededByPunctuation followedByWhitespaceOrPunctuation |
	precededByWhitespace := self whitespaceCharacters includes: precedingCharacter.
	precededByPunctuation := self punctuationCharacters includes: precedingCharacter.
	followedByWhitespaceOrPunctuation := self punctuationCharacters, self whitespaceCharacters includes: followingCharacter.
	self isRightFlanking: (precededByWhitespace not
		and: [precededByPunctuation ==> followedByWhitespaceOrPunctuation])