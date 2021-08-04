clean up
cleanUpDelimiter: aDelimiter for: anEmphasisType

	aDelimiter decreaseCountBy: anEmphasisType requiredCount.
	aDelimiter count = 0
		ifTrue: [self delimiters remove: aDelimiter]