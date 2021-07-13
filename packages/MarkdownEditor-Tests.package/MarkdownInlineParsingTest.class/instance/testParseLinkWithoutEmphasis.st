tests - links
testParseLinkWithoutEmphasis
	
	| expectedOutput link output |
	output := parser parseInline: '[hpi *not italic](https://hpi.de*)'.
	link := MarkdownLink newFrom: 'https://hpi.de*'.
	link children add: (MarkdownString newFrom: 'hpi *not italic').
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output