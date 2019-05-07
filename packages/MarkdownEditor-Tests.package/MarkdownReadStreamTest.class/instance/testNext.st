tests
testNext

	| stream |
	stream := MarkdownReadStream on: 'abc'.
	self assert: 'abc  ' equals: (stream next: 5).
	