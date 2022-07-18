tests - emphasis
testParseEmphStrongWithLineBreaks
	
	| output expectedOutput emph |
	output := parser parseInline: '**hello', Character cr, 'world**' with: 1.
	emph := MarkdownBold new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: 'hello',Character cr,'world' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output