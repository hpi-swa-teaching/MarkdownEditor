tests - links
testParseLinkWithoutEmphasis
	
	| expectedOutput link output |
	output := parser parse: '[hpi *not italic](https://hpi.de*)'.
	link := MarkdownLink2 newFrom: 'https://hpi.de*'.
	link children add: (MarkdownString2 newFrom: 'hpi *not italic').
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output