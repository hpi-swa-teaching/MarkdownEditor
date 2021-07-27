tests - autolinks
testParseAutolink4
	
	| output expectedOutput link |
	output := parser parseInline: '__a<http://foo.bar/?q=__>' with: 1.
	link := MarkdownAutolink new.
	link path: 'http://foo.bar/?q=__';
		startPosition: 4.
	expectedOutput := MarkdownLinkedList 
		newFrom: {(MarkdownString newFrom: '__a' startingAt: 1).link}.
	
	self assert: expectedOutput equals: output