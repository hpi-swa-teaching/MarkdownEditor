tests - links
testParseLink
	
	| output expectedOutput link |
	output := parser parseInline: '[hello](https://.hpi.de)' with: 1.
	link := MarkdownLink newFrom: 'https://.hpi.de'.
	link startPosition: 1.
	link children add: (MarkdownString newFrom: 'hello' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output