tests - links
testParseLinkWithoutText
	
	| expectedOutput link output |
	output := parser parse: '[](https://hpi.de)'.
	link := MarkdownLink2 newFrom: 'https://hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output