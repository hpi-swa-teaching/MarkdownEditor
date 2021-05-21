tests - state
testEndPosition

	| token |
	token := MarkdownOpeningExtendedLinkDelimiter newFor: '[[' at: 9.
	self assert: 10 equals: token endPosition.
	
	token := MarkdownClosingExtendedLinkDelimiter newFor: ']]' at: 9.
	self assert: 10 equals: token endPosition