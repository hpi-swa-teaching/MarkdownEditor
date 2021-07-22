tests - autolinks
testParseAutolink3
	
	| output expectedOutput link |
	output := parser parseInline: '<squeak@hpi.de>'.
	link := MarkdownAutolink new.
	link path: 'squeak@hpi.de'.
	link beEmail.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output