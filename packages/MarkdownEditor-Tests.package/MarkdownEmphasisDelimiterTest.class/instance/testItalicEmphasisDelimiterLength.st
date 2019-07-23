tests - matching
testItalicEmphasisDelimiterLength

	| opener closer |
	closer := MarkdownEmphasisDelimiter new content: '*'; yourself.
	opener := MarkdownEmphasisDelimiter new content: '*'; yourself.
	
	self assert: 1 equals: (closer delimiterLengthForAttributeWith: opener)
	