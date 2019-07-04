tests
testConvertingToTextContainsClosingFences

	| codeBlock result |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr);
		append: (MarkdownLine newFrom: '````').
	result := codeBlock asText.
	self assert: (result endsWith: '````')