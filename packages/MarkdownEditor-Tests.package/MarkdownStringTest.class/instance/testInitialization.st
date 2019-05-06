tests
testInitialization

	| mdString stream |
	stream := MarkdownReadStream on: 'Trainssssssssss'.
	mdString := MarkdownString newFor: stream.
	self assert: mdString content equals: 'T'.
	self assert: mdString length equals: 1.
	stream next: 3.
	mdString := MarkdownString newFor: stream.
	self assert: mdString content equals: 'i'.
	self assert: mdString length equals: 1