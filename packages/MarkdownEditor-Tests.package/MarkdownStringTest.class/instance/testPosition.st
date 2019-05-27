tests
testPosition

	| stream markdownString |
	stream := MarkdownReadStream on: 'Mind the gap between platform and train.'.
	stream next: 5.
	markdownString := MarkdownString newFor: stream.
	self assert: 6 equals: markdownString startPosition