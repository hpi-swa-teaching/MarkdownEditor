tests - links
testParseLink
	
	| output expectedOutput link |
	output := parser parseInline: '[hello](https://.hpi.de)'.
	link := MarkdownLink newFrom: 'https://.hpi.de'.
	link startPosition: 1.
	link children add: (MarkdownString newFrom: 'hello' startingAt: 1).
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output