tests - code content
testNormalCodeContent

	self assert: 'a code line', Character cr equals: (MarkdownCodeBlock newFrom: '```', Character cr, 'a code line', Character cr, '```') codeContent