tests - links
testParseLinkWithoutUrlAndDescription
	
	| expectedOutput link output |
	output := parser parseInline: '[]()'.
	link := MarkdownLink newFrom: ''.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output