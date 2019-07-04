tests
testConvertingToTextContainsOpeningFences

	| codeBlock result |
	codeBlock := MarkdownCodeBlock 
		newFrom: (MarkdownLine newFrom: '```smalltalk', Character cr).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr);
		append: (MarkdownLine newFrom: '```').
	result := codeBlock asText.
	self
		assert: (result beginsWith: '```smalltalk', Character cr)