tests - matching
testMaxDelimiterLengthIs2

	| opener closer |
	closer := MarkdownEmphasisDelimiter new
					content: '***'.
	opener := MarkdownEmphasisDelimiter new
					content: '****'.
	
	self assert: 2 equals: (closer delimiterLengthForAttributeWith: opener)
	