parsing
findOpenerFor: aCloser ifFound: foundBlock

	| previousTokens endIndex |
	endIndex := (self tokens indexOf: aCloser) - 1.
	previousTokens := (self tokens copyFrom: 1 to: endIndex) reversed.
	previousTokens detect: [:token | aCloser matches: token]
		ifFound: [:match | foundBlock value: match]
		ifNone: []