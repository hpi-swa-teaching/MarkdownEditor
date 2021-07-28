tests - autolinks
testParseAutolink2
	
	| output expectedOutput link |
	output := parser parseInline: '<abc://www.hpi.de>' with: 1.
	link := MarkdownAutolink new.
	link autolinkPath: 'abc://www.hpi.de';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output