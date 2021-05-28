tests - recognition
testIsNotExtendableWithText

	| token |
	token := MarkdownOpeningSimpleLinkDelimiter newFor: '[' at: 1.
	self deny: (token isExtendableWith: $b).
	
	token := MarkdownClosingSimpleLinkDelimiter newFor: '[' at: 1.
	self deny: (token isExtendableWith: $b)