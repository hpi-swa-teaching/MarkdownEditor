tests - tokenization
testDetectsEmphasisDelimiter

	| token |
	token := inlineTextStyler tokenFor: $* at: 1.
	self assert: (token isKindOf: MarkdownEmphasisDelimiter)