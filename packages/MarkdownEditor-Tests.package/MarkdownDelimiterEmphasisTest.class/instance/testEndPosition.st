tests
testEndPosition

	| stream token |
	stream := MarkdownReadStream on: 'Mind the **gap between platform and train**.'.
	stream next: 9.
	token := MarkdownDelimiterEmphasis newFor: stream.
	self assert: 11 equals: token endPosition