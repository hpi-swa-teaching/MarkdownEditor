tests - emphasis
testParseEmphStrongAlternativeDelimiter2
	
	| output expectedOutput emph |
	output := parser parseInline: '__hello__ world' with: 1.
	emph := MarkdownBold new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: 
		{emph. MarkdownString newFrom: ' world' startingAt: 10}.
	
	self assert: expectedOutput equals: output