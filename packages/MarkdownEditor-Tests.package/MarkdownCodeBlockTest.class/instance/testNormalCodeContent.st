tests - code content
testNormalCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock
		append: (MarkdownLine newFrom: 'code', Character cr);
		append: (MarkdownLine newFrom: '```').
	self assert: 'code', Character cr equals: codeBlock codeContent