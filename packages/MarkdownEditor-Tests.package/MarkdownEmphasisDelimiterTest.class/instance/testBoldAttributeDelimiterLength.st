tests - matching
testBoldAttributeDelimiterLength

	| opener closer |
	closer := MarkdownEmphasisDelimiter new
					content: '**'.
	opener := MarkdownEmphasisDelimiter new
					content: '**'.
	
	self assert: 2 equals: (closer attributeDelimiterLengthWith: opener)
	