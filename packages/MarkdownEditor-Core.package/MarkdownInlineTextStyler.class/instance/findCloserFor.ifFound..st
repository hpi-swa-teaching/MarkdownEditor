parsing
findCloserFor: anOpener ifFound: foundBlock

	| nextTokens startIndex |
	startIndex := (self tokens indexOf: anOpener).
	nextTokens := self tokens copyFrom: (startIndex) to: self tokens size.
	nextTokens detect: [:token | anOpener matches: token]
		ifFound: [:match | ^ foundBlock value: match]
		ifNone: []