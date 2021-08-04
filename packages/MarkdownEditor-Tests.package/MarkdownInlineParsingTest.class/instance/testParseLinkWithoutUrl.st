tests - links
testParseLinkWithoutUrl
	
	| expectedOutput link output |
	output := parser parseInline: '[hello world]()' with: 1.
	link := MarkdownLink newFrom: ''.
	link startPosition: 1.
	link children add: (MarkdownString newFrom: 'hello world' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output