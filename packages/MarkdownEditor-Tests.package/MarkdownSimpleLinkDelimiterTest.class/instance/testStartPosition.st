tests - state
testStartPosition

	| token |
	token := MarkdownOpeningSimpleLinkDelimiter newFor: '[' at: 10.
	self assert: 10 equals: token startPosition.
	
	token := MarkdownClosingSimpleLinkDelimiter newFor: ']' at: 10.
	self assert: 10 equals: token startPosition