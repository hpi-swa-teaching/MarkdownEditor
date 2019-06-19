tests
testConvertingToTextContainsClosingFences

	| markdownString codeBlock result |
	markdownString := '```', Character cr, 'Code', Character cr, '````'.
	codeBlock := MarkdownCodeBlock newFrom: markdownString.
	result := codeBlock asText.
	self
		assert: (result endsWith: '````')