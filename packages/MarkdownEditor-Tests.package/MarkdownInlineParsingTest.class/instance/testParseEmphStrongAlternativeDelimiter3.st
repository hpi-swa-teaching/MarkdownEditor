tests - emphasis
testParseEmphStrongAlternativeDelimiter3
	
	| output expectedOutput emph emph2 |
	output := parser parseInline: '__hello, __from__, squeak__' with: 1.
	emph := MarkdownBold new
		startPosition: 1.
	emph2 := MarkdownBold new
		startPosition: 10.
	emph2 children add: (MarkdownString newFrom: 'from' startingAt: 12).
	emph children add: (MarkdownString newFrom: 'hello, ' startingAt: 3);
		add: emph2;
		add: (MarkdownString newFrom: ', squeak' startingAt: 18).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output