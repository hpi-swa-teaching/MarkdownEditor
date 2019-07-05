tests
testConvertingToTextContainsOpeningFences

	| codeBlock |
	codeBlock := MarkdownCodeBlock 
		newFrom: (MarkdownLine newFrom: '```smalltalk', Character cr).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr);
		append: (MarkdownLine newFrom: '```').
	self assert: (codeBlock asText beginsWith: '```smalltalk', Character cr)