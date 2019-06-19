tests
testConvertingToTextContainsOpeningFences

	| markdownString codeBlock result |
	markdownString := '```smalltalk', Character cr, 'Code', Character cr, '```'.
	codeBlock := MarkdownCodeBlock newFrom: markdownString.
	result := codeBlock asText.
	self
		assert: (result beginsWith: '```smalltalk', Character cr)