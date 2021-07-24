tests - autolinks
testParseNestedAutolink
	
	| output expectedOutput str str2 link |
	output := parser parseInline: '<https://www.<https://www.hpi.de>>'.
	str := MarkdownString newFrom: '<https://www.' startingAt: 1.
	str2 := MarkdownString newFrom: '>' startingAt: 34.
	link := MarkdownAutolink new
		startPosition: 14;
		path: 'https://www.hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2}.
	
	self assert: expectedOutput equals: output