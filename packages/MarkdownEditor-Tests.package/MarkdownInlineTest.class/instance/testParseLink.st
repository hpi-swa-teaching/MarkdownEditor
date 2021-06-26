tests - links
testParseLink
	
	| output expectedOutput link |
	output := parser parse: '[hello](https://.hpi.de)'.
	link := MarkdownLink2 newFrom: 'https://.hpi.de'.
	link children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output