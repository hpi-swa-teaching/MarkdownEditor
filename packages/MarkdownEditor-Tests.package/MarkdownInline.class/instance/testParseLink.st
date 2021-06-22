tests - links
testParseLink
	
	| output expectedOutput link |
	output := parser parse: '[hello](www.hpi.de)'.
	
	link := MarkdownLink2 new.
	link path: 'www.hpi.de'.
	link children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := LinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output