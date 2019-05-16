tests - state
testLength

	| delimiter |
	delimiter := MarkdownDelimiterEmphasis newFor: (self readStreamOn: '*').
	self assert: 1 equals: delimiter length.
	
	delimiter := MarkdownDelimiterEmphasis newFor: (self readStreamOn: '****').
	self assert: 4 equals: delimiter length.
	
	delimiter := MarkdownDelimiterEmphasis newFor: (self readStreamOn: '*****').
	self assert: 5 equals: delimiter length.
	
	delimiter := MarkdownDelimiterEmphasis newFor: (self readStreamOn: '******************************************').
	self assert: 42 equals: delimiter length