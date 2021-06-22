tests - emphasis
testParseEmphStrong5
	
	| output expectedOutput emph |
	output := parser parse: '____hello__'.
	
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := LinkedList newFrom: {(MarkdownString2 newFrom: '__'). emph}.
	
	self assert: expectedOutput equals: output