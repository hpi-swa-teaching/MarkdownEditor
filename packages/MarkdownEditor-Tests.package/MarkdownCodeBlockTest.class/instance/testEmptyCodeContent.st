tests - code content
testEmptyCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr, '```'.
	self assert: '' equals: codeBlock codeContent