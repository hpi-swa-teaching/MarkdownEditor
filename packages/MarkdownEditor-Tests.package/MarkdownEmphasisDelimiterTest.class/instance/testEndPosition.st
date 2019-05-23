tests - state
testEndPosition

	| stream token |
	stream := self readStreamOn: 'Mind the **gap between platform and train**.' at: 9.
	token := MarkdownEmphasisDelimiter newFor: stream.
	self assert: 11 equals: token endPosition