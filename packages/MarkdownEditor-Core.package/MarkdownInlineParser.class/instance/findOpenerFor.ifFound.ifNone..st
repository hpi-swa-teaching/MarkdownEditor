parsing
findOpenerFor: aCloser ifFound: foundBlock ifNone: noneBlock

	| previousTokens endIndex |
	endIndex := (self tokens indexOf: aCloser) - 1.
	previousTokens := (self tokens copyFrom: 1 to: endIndex) reversed.
	previousTokens detect: [:token | 
			token isDelimiter 
				and: [token isOpener] 
				and: [aCloser matches: token]]
		ifFound: [:match | foundBlock value: match]
		ifNone: noneBlock