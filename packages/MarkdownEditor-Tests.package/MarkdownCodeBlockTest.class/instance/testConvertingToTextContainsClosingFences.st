tests
testConvertingToTextContainsClosingFences

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr with: MarkdownStyleSettings default).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr with: MarkdownStyleSettings default);
		append: (MarkdownLine newFrom: '````' with: MarkdownStyleSettings default).
	self assert: (codeBlock asText endsWith: '````')