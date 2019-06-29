tests - code content
testNormalCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr, 'code', Character cr, '```'.
	self assert: 'code', Character cr equals: codeBlock codeContent