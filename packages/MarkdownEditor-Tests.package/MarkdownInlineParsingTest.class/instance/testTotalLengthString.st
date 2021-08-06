tests - length
testTotalLengthString

	| str |
	str := MarkdownString newFrom: 'hello'.
	self assert: 5 equals: str totalLength