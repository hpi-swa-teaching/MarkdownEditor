tests
testConvertingToTextContainsOpeningFences

	| codeBlock |
	codeBlock := MarkdownCodeBlock 
		newFrom: (MarkdownLine newFrom: '```smalltalk', Character cr with: MarkdownStyleSettings default).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr with: MarkdownStyleSettings default);
		append: (MarkdownLine newFrom: '```' with: MarkdownStyleSettings default).
	self assert: (codeBlock asText beginsWith: '```smalltalk', Character cr)