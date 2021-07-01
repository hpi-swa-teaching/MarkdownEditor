tests - emphasis
testParseEmphStrong5
	
	| output expectedOutput emph |
	output := parser parseInline: '____hello__'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString2 newFrom: '__'). emph}.
	
	self assert: expectedOutput equals: output