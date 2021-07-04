clean up
cleanUpDelimiter: aDelimiter for: anEmphasisType

	anEmphasisType caseOf: {
		[MarkdownItalic] -> [aDelimiter decreaseCountBy: 1].
		[MarkdownBold] -> [aDelimiter decreaseCountBy: 2]}.
	aDelimiter count = 0
		ifTrue: [self delimiters remove: aDelimiter]