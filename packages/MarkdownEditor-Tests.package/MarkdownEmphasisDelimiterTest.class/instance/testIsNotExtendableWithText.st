tests - recognition
testIsNotExtendableWithText

	| token |
	token := MarkdownEmphasisDelimiter newFor: '*' at: 1.
	self deny: (token isExtendableWith: $b)