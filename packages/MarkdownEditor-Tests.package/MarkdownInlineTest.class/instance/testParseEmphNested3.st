tests - nested emphasis
testParseEmphNested3
    
	| output expectedOutput emph emphBold |
	output := parser parseInline: '_(__this should be strong and italic__)_'.
	emphBold := MarkdownBold2 new.
	emphBold children add: (MarkdownString2 newFrom: 'this should be strong and italic').
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '(');
		add: emphBold;
		add: (MarkdownString2 newFrom: ')').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.

	self assert: expectedOutput equals: output
