tests - state
testEndPosition

	| token |
	token := MarkdownString newFor: 'text' at: 6.
	self assert: 9 equals: token endPosition