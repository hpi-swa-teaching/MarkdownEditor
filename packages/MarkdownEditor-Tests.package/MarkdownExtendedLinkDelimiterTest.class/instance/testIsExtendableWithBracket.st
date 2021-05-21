tests - recognition
testIsExtendableWithBracket

	| token |
	token := MarkdownOpeningExtendedLinkDelimiter newFor: '[' at: 1.
	self assert: (token isExtendableWith: $[).
		
	token := MarkdownClosingExtendedLinkDelimiter newFor: ']' at: 1.
	self assert: (token isExtendableWith: $])