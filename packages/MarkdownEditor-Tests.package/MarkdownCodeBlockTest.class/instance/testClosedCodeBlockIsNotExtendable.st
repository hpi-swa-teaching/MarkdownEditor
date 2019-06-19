tests - extendability
testClosedCodeBlockIsNotExtendable

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	codeBlock append: '```', Character cr.
	self deny: (codeBlock isExtendableWith: 'someCode: withParameters')