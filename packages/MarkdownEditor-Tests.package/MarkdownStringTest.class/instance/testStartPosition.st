tests - state
testStartPosition

	| token |
	token := MarkdownString newFor: 'text' at: 6.
	self assert: 6 equals: token startPosition