parsing
findCloserFor: anOpener ifFound: foundBlock

	| nextTokens startIndex |
	startIndex := (self tokens indexOf: anOpener).
	nextTokens := self tokens copyFrom: startIndex to: self tokens size.
	nextTokens detect: [:token | 
			token isDelimiter 
				and: [token isCloser] 
				and: [token matches: anOpener]]
		ifFound: [:match | ^ foundBlock value: match]
		ifNone: []