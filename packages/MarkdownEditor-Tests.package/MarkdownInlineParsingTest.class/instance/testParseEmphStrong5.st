tests - emphasis
testParseEmphStrong5
	
	| output expectedOutput emph |
	output := parser parseInline: '____hello__'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString newFrom: '__'). emph}.
	
	self assert: expectedOutput equals: output