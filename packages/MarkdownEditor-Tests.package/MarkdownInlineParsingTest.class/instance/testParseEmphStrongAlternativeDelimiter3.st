tests - emphasis
testParseEmphStrongAlternativeDelimiter3
	
	| output expectedOutput emph emph2 |
	output := parser parseInline: '__hello, __from__, squeak__'.
	emph := MarkdownBold new.
	emph2 := MarkdownBold new.
	emph2 children add: (MarkdownString newFrom: 'from').
	emph children add: (MarkdownString newFrom: 'hello, ');
		add: emph2;
		add: (MarkdownString newFrom: ', squeak').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output