tests - autolinks
testParseNestedAutolink2
	
	| output expectedOutput str str2 link |
	output := parser parse: '<https://www.<https://www.hpi.de>hpi.de>>'.
	str := MarkdownString2 newFrom: '<https://www.'.
	str2 := MarkdownString2 newFrom: 'hpi.de>>'.
	link := MarkdownAutolink new.
	link path: 'https://www.hpi.de'.
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2}.
	
	self assert: expectedOutput equals: output