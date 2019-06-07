tests - fence length
testFenceLength3

	self assert: 3 equals: (MarkdownCodeBlock newFrom: '```') fenceLength