tests
testPeek

	| stream |
	stream := MarkdownReadStream on: 'Try MiniMetro now! Download it from the Squeak AppStore.'.
	self assert: '' equals: (stream peek: 0).
	self assert: 'Try MiniMetro now!' equals: (stream peek: 18).
	stream next: 19.
	self assert: 'D' equals: (stream peek: 1)
	