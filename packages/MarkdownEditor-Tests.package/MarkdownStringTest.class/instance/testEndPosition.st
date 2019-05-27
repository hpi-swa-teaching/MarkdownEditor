tests
testEndPosition

	| stream token |
	stream := MarkdownReadStream on: 'Mind the **gap between platform and train**.'.
	stream next: 5.
	token := MarkdownString newFor: stream.
	self assert: 6 equals: token endPosition