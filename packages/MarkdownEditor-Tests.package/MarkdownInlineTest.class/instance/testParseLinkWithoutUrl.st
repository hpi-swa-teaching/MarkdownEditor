tests - links
testParseLinkWithoutUrl
	
	| expectedOutput link output |
	output := parser parse: '[hello world]()'.
	link := MarkdownLink2 newFrom: ''.
	link children add: (MarkdownString2 newFrom: 'hello world').
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output