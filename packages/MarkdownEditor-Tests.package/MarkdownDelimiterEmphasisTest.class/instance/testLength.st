tests
testLength

	| delimiter |
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '*').
	self assert: delimiter length equals: 1.
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '****').
	self assert: delimiter length equals: 4.
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '*****').
	self assert: delimiter length equals: 5.
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '******************************************').
	self assert: delimiter length equals: 42
	