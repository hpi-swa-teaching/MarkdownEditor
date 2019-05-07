tests
testPosition

	| stream mdString |
	stream := MarkdownReadStream on: 'Mind the gap between platform and train.'.
	stream next: 5.
	mdString := MarkdownString newFor: stream.
	self assert: 5 equals: mdString position.