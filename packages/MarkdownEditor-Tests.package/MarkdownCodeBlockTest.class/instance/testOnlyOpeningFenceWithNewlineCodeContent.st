tests - code content
testOnlyOpeningFenceWithNewlineCodeContent

	self assert: '' equals: (MarkdownCodeBlock newFrom: '```', Character cr) codeContent