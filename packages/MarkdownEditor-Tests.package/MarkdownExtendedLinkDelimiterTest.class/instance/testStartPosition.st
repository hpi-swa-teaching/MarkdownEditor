tests - state
testStartPosition

	| token |
	token := MarkdownOpeningExtendedLinkDelimiter newFor: '[' at: 10.
	self assert: 10 equals: token startPosition.
	
	token := MarkdownClosingExtendedLinkDelimiter newFor: ']' at: 10.
	self assert: 10 equals: token startPosition