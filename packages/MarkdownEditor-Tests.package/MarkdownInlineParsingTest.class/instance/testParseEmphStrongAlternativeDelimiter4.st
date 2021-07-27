tests - emphasis
testParseEmphStrongAlternativeDelimiter4
	
	| output expectedOutput emph |
	output := parser parseInline: 'hello-__(world)__' with: 1.
	emph := MarkdownBold new
		startPosition: 7.
	emph children add: (MarkdownString newFrom: '(world)' startingAt: 9).
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: 'hello-' startingAt: 1). emph}.
	
	self assert: expectedOutput equals: output