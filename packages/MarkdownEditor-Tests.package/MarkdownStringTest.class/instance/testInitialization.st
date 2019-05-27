tests
testInitialization

	| markdownString stream |
	stream := MarkdownReadStream on: 'Trainssssssssss'.
	markdownString := MarkdownString newFor: stream.
	
	self assert: 'T' equals: markdownString content.
	self assert: 1 equals: markdownString length.
	
	stream next: 3.
	markdownString := MarkdownString newFor: stream.
	
	self assert: 'i' equals: markdownString content.
	self assert: 1 equals: markdownString length