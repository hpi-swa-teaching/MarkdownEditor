tests - code content
testEmptyCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock append: (MarkdownLine newFrom: '```').
	self assert: '' equals: codeBlock codeContent