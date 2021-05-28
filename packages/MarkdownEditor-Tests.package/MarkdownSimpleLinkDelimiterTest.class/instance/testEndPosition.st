tests - state
testEndPosition

	| token |
	token := MarkdownOpeningSimpleLinkDelimiter newFor: '[[' at: 9.
	self assert: 10 equals: token endPosition.
	
	token := MarkdownClosingSimpleLinkDelimiter newFor: ']]' at: 9.
	self assert: 10 equals: token endPosition