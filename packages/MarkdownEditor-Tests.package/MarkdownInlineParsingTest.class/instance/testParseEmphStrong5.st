tests - emphasis
testParseEmphStrong5
	
	| output expectedOutput emph |
	output := parser parseInline: '____hello__'.
	emph := MarkdownBold new 
		startPosition: 3.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 5).
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: '__' startingAt: 1). emph}.
	
	self assert: expectedOutput equals: output