tests - code content
testAutoClosingCodeContentWithNewline

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock append: (MarkdownLine newFrom: 'auto closed').
	self assert: 'auto closed' equals: codeBlock codeContent