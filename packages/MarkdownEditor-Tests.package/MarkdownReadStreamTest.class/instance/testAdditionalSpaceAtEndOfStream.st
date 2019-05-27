tests
testAdditionalSpaceAtEndOfStream

	| stream |
	stream := MarkdownReadStream on: 'abc'.
	self assert: 'abc ' equals: (stream next: 4)