tests - recognition
testIsNotExtendableWithText

	| token |
	token := MarkdownOpeningLinkDelimiter newFor: '[' at: 1.
	self deny: (token isExtendableWith: $b).
	
	token := MarkdownClosingLinkDelimiter newFor: '[' at: 1.
	self deny: (token isExtendableWith: $b)