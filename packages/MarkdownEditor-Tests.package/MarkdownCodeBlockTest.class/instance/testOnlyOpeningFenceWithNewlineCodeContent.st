tests - code content
testOnlyOpeningFenceWithNewlineCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	self assert: '' equals: codeBlock codeContent