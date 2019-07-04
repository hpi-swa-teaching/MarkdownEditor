tests - code content
testOnlyOpeningFenceCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```').
	self assert: '' equals: codeBlock codeContent