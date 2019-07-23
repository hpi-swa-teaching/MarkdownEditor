tests - extendability
testOpenCodeBlockIsExtendable

	| codeBlock line |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	line := MarkdownLine newFrom: 'someCode: withParameters'.
	self assert: (codeBlock isExtendableWith: line)