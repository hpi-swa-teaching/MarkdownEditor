tests - state
testStartPosition

	| token |
	token := MarkdownEmphasisDelimiter newFor: '*' at: 10.
	self assert: 10 equals: token startPosition