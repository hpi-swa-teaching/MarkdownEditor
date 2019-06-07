tests - extendability
testOpenCodeBlockIsExtendable

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	self assert: (codeBlock isExtendableWith: 'someCode: withParameters')