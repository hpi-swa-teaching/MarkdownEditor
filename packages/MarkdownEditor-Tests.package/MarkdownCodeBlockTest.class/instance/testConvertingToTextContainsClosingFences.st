tests
testConvertingToTextContainsClosingFences

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr);
		append: (MarkdownLine newFrom: '````').
	self assert: (codeBlock asText endsWith: '````')