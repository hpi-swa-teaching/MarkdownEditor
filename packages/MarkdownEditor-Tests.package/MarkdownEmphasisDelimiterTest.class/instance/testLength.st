tests - state
testLength

	| delimiter |
	delimiter := MarkdownEmphasisDelimiter newFor: (self readStreamOn: '*').
	self assert: 1 equals: delimiter length.
	
	delimiter := MarkdownEmphasisDelimiter newFor: (self readStreamOn: '****').
	self assert: 4 equals: delimiter length.
	
	delimiter := MarkdownEmphasisDelimiter newFor: (self readStreamOn: '*****').
	self assert: 5 equals: delimiter length
	