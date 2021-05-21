tests - recognition
testIsNotExtendableWithText

	| token |
	token := MarkdownOpeningExtendedLinkDelimiter newFor: '[' at: 1.
	self deny: (token isExtendableWith: $b).
	
	token := MarkdownClosingExtendedLinkDelimiter newFor: '[' at: 1.
	self deny: (token isExtendableWith: $b)