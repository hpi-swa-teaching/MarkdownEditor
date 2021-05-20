tests - recognition
testStrikeIsNotExtendableWithText

	| token |
	token := MarkdownStrikeDelimiter newFor: '~' at: 1.
	self deny: (token isExtendableWith: $b)