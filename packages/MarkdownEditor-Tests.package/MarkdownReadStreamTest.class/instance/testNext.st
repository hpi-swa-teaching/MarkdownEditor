tests
testNext

	| stream |
	stream := MarkdownReadStream on: 'abc'.
	self assert: (stream next: 5) equals: 'abc  '.
	