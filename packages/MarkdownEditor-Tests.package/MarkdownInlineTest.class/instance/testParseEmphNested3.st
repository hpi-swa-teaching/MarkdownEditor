tests - nested emphasis
testParseEmphNested3
    
	| output expectedOutput emph emphBold |
	output := parser parseInline: '_(__this should be strong and italic__)_'.
	emphBold := MarkdownBold new.
	emphBold children add: (MarkdownString newFrom: 'this should be strong and italic').
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: '(');
		add: emphBold;
		add: (MarkdownString newFrom: ')').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.

	self assert: expectedOutput equals: output
