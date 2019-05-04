tests
testLast

	| stream |
	stream := MarkdownReadStream on: 'abc'.
	self assert: (stream last) equals: Character lf.
	