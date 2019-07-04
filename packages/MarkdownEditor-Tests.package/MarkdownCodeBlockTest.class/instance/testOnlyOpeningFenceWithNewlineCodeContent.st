tests - code content
testOnlyOpeningFenceWithNewlineCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	self assert: '' equals: codeBlock codeContent