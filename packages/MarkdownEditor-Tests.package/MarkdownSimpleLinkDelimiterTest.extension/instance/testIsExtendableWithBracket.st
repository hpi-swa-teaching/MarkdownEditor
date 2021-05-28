tests - recognition
testIsExtendableWithBracket

	| token |
	token := MarkdownOpeningSimpleLinkDelimiter newFor: '[' at: 1.
	self assert: (token isExtendableWith: $<).
		
	token := MarkdownClosingSimpleLinkDelimiter newFor: ']' at: 1.
	self assert: (token isExtendableWith: $>)