parsing
postprocessTokens

	self tokens do: [:token |
		token
			locatedBetween: (self precedingCharacterOf: token)
			and: (self followingCharacterOf: token)]