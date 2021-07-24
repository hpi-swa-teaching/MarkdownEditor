tests - autolinks
testParseAutolink2
	
	| output expectedOutput link |
	output := parser parseInline: '<abc://www.hpi.de>'.
	link := MarkdownAutolink new.
	link path: 'abc://www.hpi.de';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output