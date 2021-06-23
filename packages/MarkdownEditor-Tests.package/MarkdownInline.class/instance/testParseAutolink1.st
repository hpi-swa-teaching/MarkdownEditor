tests - autolinks
testParseAutolink1
	
	| output expectedOutput link |
	output := parser parse: '<abc://www.hpi.de>'.
	
	link := MarkdownAutolink new.
	link path: 'abc://www.hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output