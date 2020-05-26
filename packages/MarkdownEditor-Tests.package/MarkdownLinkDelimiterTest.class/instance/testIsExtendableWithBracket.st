tests - recognition
testIsExtendableWithBracket

	| token |
	token := MarkdownOpeningLinkDelimiter newFor: '[' at: 1.
	self assert: (token isExtendableWith: $[).
		
	token := MarkdownClosingLinkDelimiter newFor: ']' at: 1.
	self assert: (token isExtendableWith: $])