tests - links
testParseLinkWithoutUrl
	
	| expectedOutput link output |
	output := parser parseInline: '[hello world]()'.
	link := MarkdownLink newFrom: ''.
	link startPosition: 1.
	link children add: (MarkdownString newFrom: 'hello world' startingAt: 1).
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output