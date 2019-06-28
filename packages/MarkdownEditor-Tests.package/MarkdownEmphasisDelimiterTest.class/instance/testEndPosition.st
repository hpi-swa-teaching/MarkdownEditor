tests - state
testEndPosition

	| token |
	token := MarkdownEmphasisDelimiter newFor: '**' at: 9.
	self assert: 10 equals: token endPosition