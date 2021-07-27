tests - autolinks
testParseAutolink
	
	| output expectedOutput link |
	output := parser parseInline: '<https://www.hpi.de>' with: 1.
	link := MarkdownAutolink new.
	link path: 'https://www.hpi.de';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output