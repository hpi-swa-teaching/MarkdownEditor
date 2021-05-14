tests - recognition
testStrikeIsNotExtendableWithAsterix

	| token |
	token := MarkdownStrikeDelimiter newFor: '~' at: 1.
	self deny: (token isExtendableWith: $*)