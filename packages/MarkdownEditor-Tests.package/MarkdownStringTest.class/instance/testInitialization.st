tests
testInitialization

	| mdString stream |
	stream := MarkdownReadStream on: 'Trainssssssssss'.
	mdString := MarkdownString newFor: stream.
	self assert: 'T' equals: mdString content.
	self assert: 1 equals: mdString length.
	stream next: 3.
	mdString := MarkdownString newFor: stream.
	self assert: 'i' equals: mdString content.
	self assert: 1 equals: mdString length