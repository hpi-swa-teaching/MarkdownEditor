tests - code content
testOnlyOpeningFenceCodeContent

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```'.
	self assert: '' equals: codeBlock codeContent