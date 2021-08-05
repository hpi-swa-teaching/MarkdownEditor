tests - length
testTotalLengthCodeSpan

	| code |
	code := MarkdownCodeSpan new.
	code rawContent: 'self halt';
		fenceLength: 1.
	self assert: 11 equals: code totalLength