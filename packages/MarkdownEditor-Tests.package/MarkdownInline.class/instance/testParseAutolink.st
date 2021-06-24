tests - autolinks
testParseAutolink
	
	| output expectedOutput link |
	output := parser parse: '<https://www.hpi.de>'.
	
	link := MarkdownAutolink new.
	link path: 'https://www.hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output