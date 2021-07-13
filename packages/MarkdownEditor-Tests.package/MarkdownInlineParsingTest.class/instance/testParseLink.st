tests - links
testParseLink
	
	| output expectedOutput link |
	output := parser parseInline: '[hello](https://.hpi.de)'.
	link := MarkdownLink newFrom: 'https://.hpi.de'.
	link children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output