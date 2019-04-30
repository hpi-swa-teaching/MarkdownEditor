tests
testPeek

	| stream |
	stream := MarkdownReadStream on: 'Try MiniMetro now! Download it from the Squeak AppStore.'.
	self assert: (stream peek: 0) equals: ''.
	self assert: (stream peek: 18) equals: 'Try MiniMetro now!'.
	stream next: 19.
	self assert: (stream peek: 1) equals: 'D'.
	