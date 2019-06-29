tests - code content
testAutoClosingCodeContentWithNewline

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr, 'auto closed'.
	self assert: 'auto closed' equals: codeBlock codeContent