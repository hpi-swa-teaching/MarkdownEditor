tests - links
testParseLinkWithoutUrl
	
	| expectedOutput link output |
	output := parser parseInline: '[hello world]()'.
	link := MarkdownLink newFrom: ''.
	link children add: (MarkdownString newFrom: 'hello world').
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output