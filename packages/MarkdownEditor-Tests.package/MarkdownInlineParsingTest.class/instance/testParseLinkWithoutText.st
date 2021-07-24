tests - links
testParseLinkWithoutText
	
	| expectedOutput link output |
	output := parser parseInline: '[](https://hpi.de)'.
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output