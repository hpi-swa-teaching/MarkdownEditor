tests
testNoMoreThanOneAdditionalSpaceAtEndOfStream

	| stream |
	stream := MarkdownReadStream on: 'abc'.
	self should: [stream next: 5] raise: Error description: 'Not enough characters left'