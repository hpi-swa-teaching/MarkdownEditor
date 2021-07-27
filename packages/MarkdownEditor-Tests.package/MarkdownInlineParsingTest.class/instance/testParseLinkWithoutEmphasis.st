tests - links
testParseLinkWithoutEmphasis
	
	| expectedOutput link output |
	output := parser parseInline: '[hpi *not italic](https://hpi.de*)'.
	link := MarkdownLink newFrom: 'https://hpi.de*'.
	link startPosition: 1.
	link children add: (MarkdownString newFrom: 'hpi *not italic' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output