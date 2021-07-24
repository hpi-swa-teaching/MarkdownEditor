tests - autolinks
testParseNotAutolink
	
	| output expectedOutput |
	output := parser parseInline: '<www.hpi.de>'.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '<www.hpi.de>' startingAt: 1}.
	
	self assert: expectedOutput equals: output