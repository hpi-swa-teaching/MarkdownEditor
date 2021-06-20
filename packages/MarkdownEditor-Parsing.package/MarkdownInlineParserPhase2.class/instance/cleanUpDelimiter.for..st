clean up
cleanUpDelimiter: aDelimiter for: anEmphasisType

	aDelimiter decreaseCountBy: (self delimiterManager decreaseCountFrom: anEmphasisType).
	aDelimiter count = 0
		ifTrue: [self delimiters remove: aDelimiter]