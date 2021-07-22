tests - autolinks
testParseAutolink4
	
	| output expectedOutput link |
	output := parser parseInline: '__a<http://foo.bar/?q=__>'.
	link := MarkdownAutolink new.
	link path: 'http://foo.bar/?q=__'.
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString newFrom: '__a').link}.
	
	self assert: expectedOutput equals: output