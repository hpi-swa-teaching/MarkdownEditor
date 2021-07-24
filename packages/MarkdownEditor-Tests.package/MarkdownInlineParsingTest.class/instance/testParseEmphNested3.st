tests - nested emphasis
testParseEmphNested3
    
	| output expectedOutput emph emphBold |
	output := parser parseInline: '_(__this should be strong and italic__)_'.
	emphBold := MarkdownBold new
		startPosition: 3.
	emphBold children add: (MarkdownString newFrom: 'this should be strong and italic' startingAt: 5).
	emph := MarkdownItalic new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: '(' startingAt: 2);
		add: emphBold;
		add: (MarkdownString newFrom: ')' startingAt: 39).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.

	self assert: expectedOutput equals: output
