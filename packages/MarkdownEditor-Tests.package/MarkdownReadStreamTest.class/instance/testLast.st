tests
testLast

	| stream |
	stream := MarkdownReadStream on: 'abc'.
	self assert: Character lf equals: stream last
	