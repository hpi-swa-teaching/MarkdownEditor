tests - code content
testEmptyCodeContent

	self assert: '' equals: (MarkdownCodeBlock newFrom: '```', Character cr, '```') codeContent