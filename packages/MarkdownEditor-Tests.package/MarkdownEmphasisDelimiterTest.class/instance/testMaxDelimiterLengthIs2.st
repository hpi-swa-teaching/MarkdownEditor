tests - matching
testMaxDelimiterLengthIs2

	| opener closer |
	closer := MarkdownEmphasisDelimiter new content: '***'; yourself.
	opener := MarkdownEmphasisDelimiter new content: '****'; yourself.
	
	self assert: 2 equals: (closer delimiterLengthForAttributeWith: opener)
	