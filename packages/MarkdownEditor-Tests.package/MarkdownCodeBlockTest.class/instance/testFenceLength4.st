tests - fence length
testFenceLength4

	self assert: 4 equals: (MarkdownCodeBlock newFrom: '````') fenceLength