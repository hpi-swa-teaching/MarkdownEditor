parsing - tokenization
processAdjacentTokens

	self tokens do: [:token |
		token
			setPreceding: (self precedingCharacterOf: token)
			following: (self followingCharacterOf: token)]