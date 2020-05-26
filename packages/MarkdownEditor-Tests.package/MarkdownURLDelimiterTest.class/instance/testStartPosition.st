tests - state
testStartPosition

	| token |
	token := MarkdownOpeningURLDelimiter newFor: '(' at: 10.
	self assert: 10 equals: token startPosition.
	
	token := MarkdownClosingURLDelimiter newFor: ')' at: 10.
	self assert: 10 equals: token startPosition