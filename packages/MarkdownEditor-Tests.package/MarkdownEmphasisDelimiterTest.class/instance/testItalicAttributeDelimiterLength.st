tests - matching
testItalicAttributeDelimiterLength

	| opener closer |
	closer := MarkdownEmphasisDelimiter new
					content: '*'.
	opener := MarkdownEmphasisDelimiter new
					content: '*'.
	
	self assert: 1 equals: (closer delimiterLengthForAttributeWith: opener)
	