tests - state
testStartPosition

	| token |
	token := MarkdownOpeningLinkDelimiter newFor: '[' at: 10.
	self assert: 10 equals: token startPosition.
	
	token := MarkdownClosingLinkDelimiter newFor: ']' at: 10.
	self assert: 10 equals: token startPosition