tests - autolinks
testParseNotAutolink
	
	| output expectedOutput |
	output := parser parseInline: '<www.hpi.de>'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: ('<www.hpi.de>')}.
	
	self assert: expectedOutput equals: output