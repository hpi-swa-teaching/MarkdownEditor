tests - code content
testAutoClosingCodeContentWithNewline

	self assert: 'auto closed' equals: (MarkdownCodeBlock newFrom: '```', Character cr, 'auto closed') codeContent