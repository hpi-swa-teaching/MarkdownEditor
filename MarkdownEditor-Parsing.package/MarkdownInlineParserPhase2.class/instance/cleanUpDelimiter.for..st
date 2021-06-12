clean up
cleanUpDelimiter: aDelimiter for: anEmphasisType

	anEmphasisType caseOf: {
		[MarkdownItalic2] ->[aDelimiter decreaseCountBy: 1].
		[MarkdownBold2] ->[aDelimiter decreaseCountBy: 2]}.
	aDelimiter count = 0
		ifTrue: [self delimiters remove: aDelimiter]