tests - links
testParseLinkWithoutUrlAndDescription
	
	| expectedOutput link output |
	output := parser parseInline: '[]()'.
	link := MarkdownLink newFrom: ''.
	link startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output