tests
testPosition

	| stream token |
	stream := MarkdownReadStream on: 'Mind the **gap between platform and train**.'.
	stream next: 10.
	token := MarkdownString newFor: stream.
	self assert: 10 equals: token position.