tests - links
testParseLinkWithoutUrlAndDescription
	
	| expectedOutput link output |
	output := parser parseInline: '[]()' with: 1.
	link := MarkdownLink newFrom: ''.
	link startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output