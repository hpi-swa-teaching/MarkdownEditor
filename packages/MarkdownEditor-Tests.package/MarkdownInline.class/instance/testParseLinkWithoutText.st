tests - links
testParseLinkWithoutText
	
	| expectedOutput link output |
	output := parser parse: '[](hpi.de)'.
	
	link := MarkdownLink2 newFrom: 'hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output