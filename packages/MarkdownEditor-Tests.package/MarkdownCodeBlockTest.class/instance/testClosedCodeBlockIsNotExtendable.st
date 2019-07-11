tests - extendability
testClosedCodeBlockIsNotExtendable

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock append: (MarkdownLine newFrom: '```', Character cr).
	self deny: (codeBlock isExtendableWith: 'someCode: withParameters')