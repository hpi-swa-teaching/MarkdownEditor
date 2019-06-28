initialize-release
locatedBetween: precedingCharacter and: followingCharacter

	self
		decideLeftFlankingForPreceding: precedingCharacter following: followingCharacter;
		decideRightFlankingForPreceding: precedingCharacter following: followingCharacter