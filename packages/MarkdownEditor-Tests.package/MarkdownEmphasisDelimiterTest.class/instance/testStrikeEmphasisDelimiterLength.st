tests - matching
testStrikeEmphasisDelimiterLength

	| opener closer |
	closer := MarkdownStrikeDelimiter new content: '~~'; yourself.
	opener := MarkdownStrikeDelimiter new content: '~~'; yourself.
	
	self assert: 2 equals: (closer delimiterLengthForEmphasisWith: opener)
	