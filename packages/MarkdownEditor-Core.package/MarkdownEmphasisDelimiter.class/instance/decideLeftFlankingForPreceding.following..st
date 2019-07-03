initialize-release
decideLeftFlankingForPreceding: precedingCharacter following: followingCharacter

	| followedByWhitespace followedByPunctuation precededByWhitespaceOrPunctuation |
	followedByWhitespace := self whitespaceCharacters includes: followingCharacter. 
	followedByPunctuation := self punctuationCharacters includes: followingCharacter.
	precededByWhitespaceOrPunctuation := self punctuationCharacters, self whitespaceCharacters includes: precedingCharacter.
	self isLeftFlanking: (followedByWhitespace not
		and: [followedByPunctuation ==> precededByWhitespaceOrPunctuation])