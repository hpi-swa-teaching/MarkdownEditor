tests - autolinks
testParseNotAutolink
	
	| output expectedOutput |
	output := parser parseInline: '<www.hpi.de>' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '<www.hpi.de>' startingAt: 1}.
	
	self assert: expectedOutput equals: output