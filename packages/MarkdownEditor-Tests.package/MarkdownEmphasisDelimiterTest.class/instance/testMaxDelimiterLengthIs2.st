tests - matching
testMaxDelimiterLengthIs2

	| opener closer |
	closer := MarkdownItalicBoldDelimiter new content: '***'; yourself.
	opener := MarkdownItalicBoldDelimiter new content: '****'; yourself.
	
	self assert: 2 equals: (closer delimiterLengthForEmphasisWith: opener)
	