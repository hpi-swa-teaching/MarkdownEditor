tests - state
testEndPosition

	| token |
	token := MarkdownOpeningLinkDelimiter newFor: '[[' at: 9.
	self assert: 10 equals: token endPosition.
	
	token := MarkdownClosingLinkDelimiter newFor: ']]' at: 9.
	self assert: 10 equals: token endPosition