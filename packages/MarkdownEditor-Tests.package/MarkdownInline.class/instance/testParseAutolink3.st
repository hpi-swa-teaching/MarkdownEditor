tests - autolinks
testParseAutolink3
	
	| output expectedOutput link |
	output := parser parse: '<squeak@hpi.de>'.
	
	link := MarkdownAutolink new.
	link path: 'squeak@hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output