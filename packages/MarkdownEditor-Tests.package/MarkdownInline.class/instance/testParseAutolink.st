tests - autolinks
testParseAutolink
	
	| output expectedOutput link |
	output := parser parse: '<http://www.hpi.de>'.
	
	link := MarkdownAutolink new.
	link path: 'http://www.hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output