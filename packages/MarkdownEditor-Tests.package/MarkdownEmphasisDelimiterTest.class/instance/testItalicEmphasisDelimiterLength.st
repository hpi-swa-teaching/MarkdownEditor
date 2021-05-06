tests - matching
testItalicEmphasisDelimiterLength

	| opener closer |
	closer := MarkdownItalicBoldDelimiter new content: '*'; yourself.
	opener := MarkdownItalicBoldDelimiter new content: '*'; yourself.
	
	self assert: 1 equals: (closer delimiterLengthForEmphasisWith: opener)
	