tests - state
testEndPosition

	| token |
	token := MarkdownOpeningURLDelimiter newFor: '(' at: 9.
	self assert: 9 equals: token endPosition.
	
	token := MarkdownClosingURLDelimiter newFor: ')' at: 9.
	self assert: 9 equals: token endPosition