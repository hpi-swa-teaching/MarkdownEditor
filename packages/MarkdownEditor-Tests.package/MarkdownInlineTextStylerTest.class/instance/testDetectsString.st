tests - tokenization
testDetectsString

	| token |
	token := inlineTextStyler tokenFor: $j at: 1.
	self assert: (token isKindOf: MarkdownString)