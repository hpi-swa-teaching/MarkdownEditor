tests
testLength

	| delimiter |
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '*').
	self assert: 1 equals: delimiter length.
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '****').
	self assert: 4 equals: delimiter length.
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '*****').
	self assert: 5 equals: delimiter length.
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '******************************************').
	self assert: 42 equals: delimiter length
	